import os
import argparse
from pathlib import Path
import re
from dataclasses import dataclass, field

import extract_osiris

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

def export_file(path, contents):
    try:
        f = open(str(path.absolute()), 'w')
        f.write(contents)
        f.close()
        return True
    except Exception as e:
        print("Erroring writing '{}': {}".format(path.name, e))
    return False

def is_empty(line):
    return line in ['\n', '\r\n']

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

#pattern_call = r"^(call|syscall|event)\s*?(.*?)\((.*)\) .*$"
pattern_call = re.compile("^(call)\s*?(.*?)\((.*)\) .*$")
pattern_params = re.compile("\(+?(.*?)\)_(\w+)")
pattern_query = re.compile("(query)\s*?(.*?)\((.*)\).*$")
pattern_query_input = re.compile("\[in\]\((.*?)\)_(\w+)")
pattern_query_output = re.compile("\[out\]\((.*?)\)_(\w+)")

type_pattern = re.compile("(\w+) \{(.+)\}")

func_template = """
---{desc}
{params_doc}
function Osi.{name}({params_func}) end"""

func_template_nodesc = """
{params_doc}
function Osi.{name}({params_func}) end"""

enum_alias_value_template = "---| '{value}' [# {description}]"

enum_alias_template = """
---@alias {name}
{entries}
"""

type_remap = {
    1: "integer",
    2: "integer",
    3: "number",
    4: "string",
    5: "string"
}

name_remap = {
    "INTEGER": "integer",
    "REAL": "number",
    "STRING": "string"
}

#[int, OsirisType]
types = {}

@dataclass
class EnumValue:
    name:str
    value:int
    
    def to_lua(self):
        return f"---| '{self.name}' # {self.value}"

@dataclass
class OsirisType:
    name:str
    id:int
    actual_id:int
    enum_values:list[EnumValue] = field(default_factory=list)
    skip_export:bool = False
    
    def __post_init__(self):
        self.enum_values = []
        remap = name_remap.get(self.name, None)
        if remap:
            self.name = remap
            self.skip_export = True
    
    def to_lua_type(self)->str:
        lua_type = type_remap.get(self.actual_id, "any")
        base_type = types.get(self.actual_id, None)
        if base_type != None and base_type != self:
            return base_type.to_lua_type()
        return lua_type
    
    def export_lua(self)->str:
        if len(self.enum_values) > 0:
            entries_txt = "\n".join([x.to_lua() for x in self.enum_values])
            return enum_alias_template.format(name=self.name, entries=entries_txt)
        else:
            lua_type = type_remap.get(self.actual_id, "any")
            base_type = types.get(self.actual_id, None)
            if base_type != None and base_type != self:
                lua_type = base_type.name
            return f"---@alias {self.name} {lua_type}"

@dataclass
class FuncVariable:
    name:str
    type:int

    def __post_init__(self):
        self.name = self.name.strip()
        self.name = self.name[0].lower() + self.name[1:]

    def export_type(self):
        t = types.get(self.type, None)
        if t:
            return t.name
        return "any"

@dataclass
class CallDefinition:
    name:str
    parameters:list[FuncVariable] = field(default_factory=list)
    description = ""

    def __post_init__(self):
        self.name = self.name.strip()
        self.overloads:list[CallDefinition] = []
    
    def has_param(self, name):
        total = 0
        for p in self.parameters:
            if name in p.name:
                total += 1
        return total

    def to_string(self):
        s = self.name + '\n'
        for p in self.parameters:
            s += '--  {} - {}\n'.format(p.type, p.name)
        return s
    
    def export_overloads(self):
        if len(self.overloads) > 0:
            txt = "\n".join([x.export_as_overload() for x in self.overloads])
            return txt + "\n"
        return ""
    
    def export_as_overload(self):
        params_txt = ", ".join([f'{x.name}:{x.export_type()}' for x in self.parameters])
        return f"---@overload fun({params_txt})"

    def export(self):
        params_doc = self.export_overloads()
        params_func = ""
        i = 0
        count = len(self.parameters)
        for p in self.parameters:
            i = i + 1
            params_doc += "---@param {} {}".format(p.name, p.export_type())
            params_func += p.name
            if (i < count):
                params_doc += '\n'
                params_func += ", "
        template = func_template
        if self.description == "":
            template = func_template_nodesc
        return template.format(params_doc = params_doc, 
            name = self.name, params_func = params_func, desc=self.description)

@dataclass
class QueryDefinition(CallDefinition):
    out:list[FuncVariable] = field(default_factory=list)
    
    def __post_init__(self):
        self.name = self.name.strip()
    
    def to_string(self):
        s = super().to_string()
        for p in self.out:
            s += 'return  {} - {}\n'.format(p.type, p.name)
        return s

    def has_out(self, name):
        total = 0
        for p in self.out:
            if name in p.name:
                total += 1
        return total

    def export(self):
        params_doc = ""
        params_func = ""

        i = 0
        count = len(self.parameters)
        for p in self.parameters:
            i = i + 1
            params_doc += "---@param {} {}".format(p.name, p.export_type())
            params_func += p.name
            if (i < count):
                params_doc += '\n'
                params_func += ", "
        i = 0
        count = len(self.out)
        if (count > 0 and len(self.parameters) > 0): 
            params_doc += '\n'
        for p in self.out:
            i = i + 1
            params_doc += "---@return {} {}".format(p.export_type(), p.name)
            if (i < count):
                params_doc += '\n'
        template = func_template
        if self.description == "":
            template = func_template_nodesc
        return template.format(params_doc = params_doc, 
            name = self.name, params_func = params_func, desc=self.description)

name_to_type:dict[str, OsirisType] = {}

call_definitions = []
query_definitions = []
extender_definitions = []

function_map:dict[str, CallDefinition|QueryDefinition] = {}

def get_param_type(match):
    t = name_to_type.get(match, None)
    if t != None:
        return t.id
    return match

def build_call(line):
    m = pattern_call.search(line)
    if m:
        func_name = m.group(2)
        params_text = m.group(3)
        params_match = pattern_params.finditer(params_text)

        call = CallDefinition(func_name)
        for match in params_match:
            #print("Match: {}".format(match))
            #print("**{}".format(dir(match)))
            param_type = get_param_type(match.group(1))
            param_name = match.group(2)

            total_duplicates = call.has_param(param_name)
            if total_duplicates > 0:
                param_name = "{}{}".format(param_name, total_duplicates+1)
            
            p = FuncVariable(param_name, param_type)
            call.parameters.append(p)
        #print("New call: " + call.to_string())
        if "NRD" in func_name:
            extender_definitions.append(call)
        else:
            call_definitions.append(call)
        function_map[call.name] = call

def build_query(line):
    m = pattern_query.search(line)
    if m:
        func_name = m.group(2)
        params_text = m.group(3)
        input_params_match = pattern_query_input.finditer(params_text)
        output_params_match = pattern_query_output.finditer(params_text)

        query = QueryDefinition(func_name)
        for match in input_params_match:
            param_type = get_param_type(match.group(1))
            param_name = match.group(2)
            total_duplicates = query.has_param(param_name)
            if total_duplicates > 0:
                param_name = "{}{}".format(param_name, total_duplicates+1)
            p = FuncVariable(param_name, param_type)
            query.parameters.append(p)
        for match in output_params_match:
            param_type = get_param_type(match.group(1))
            param_name = match.group(2)
            total_duplicates = query.has_out(param_name)
            if total_duplicates > 0:
                param_name = "{}{}".format(param_name, total_duplicates+1)
            p = FuncVariable(param_name, param_type)
            query.out.append(p)
        #print("New query: " + query.to_string())
        if "NRD" in func_name:
            global extender_definitions
            extender_definitions.append(query)
        else:
            global query_definitions
            query_definitions.append(query)
        function_map[query.name] = query
    else:
        print("Not a query: {}".format(line))

def process_line(line):
    type_match = type_pattern.search(line)
    if type_match:
        declaration = type_match.group(1)
        details = type_match.group(2).split(", ")
        name = details[0]
        type_id = int(details[1])
        actual_type = type_id
        if len(details) > 2:
            actual_type = int(details[2])
        t = OsirisType(name, type_id, actual_type)
        types[t.id] = t
        name_to_type[name] = t
        if len(details) > 3:
            for x in details[3:]:
                name,value = str.split(x, " = ")
                value = int(value)
                t.enum_values.append(EnumValue(name, value))
    elif not "sys" in line:
        #if "call " in line or "syscall " in line:
        if "call " in line in line:
            build_call(line)
        #elif "query " in line or "sysquery " in line:
        elif "query " in line in line:
            build_query(line)
    #print("{} | {} {}".format(line, "query" in line, "syscall " in line))

def export(output_path:Path):
    osi_template = """
---@diagnostic disable
---@meta

{types}

if Osi == nil then Osi = {{}} end

--#region Queries
{queries}
--#endregion

--#region Calls
{calls}
--#endregion
    """

    output_str= ""
    output_path.parent.mkdir(exist_ok=True, parents=True)

    types_str = "\n".join([x.export_lua() for x in types.values() if not x.skip_export])
    calls_str = ""
    queries_str = ""
    extender_str = ""

    for func in call_definitions:	
        calls_str += '\t{}\n'.format(func.export())

    for func in query_definitions:	
        queries_str += '\t{}\n'.format(func.export())

    for func in extender_definitions:	
        extender_str += '\t{}\n'.format(func.export())

    output_str = osi_template.format(types=types_str, queries=queries_str, calls=calls_str)

    export_file(output_path, output_str)

def run(header_file:Path, output_path:Path, osi_file:Path, lslib_dll:Path):
    print(f"Parsing header: {header_file}")
    with open(header_file.absolute()) as f:
        lines = f.readlines()
        for line in lines:
            process_line(line.strip())
    
    if osi_file.exists() and lslib_dll.exists():
        print("Getting proc overloads from story.div.osi")
        story = extract_osiris.run(osi_file, lslib_dll, None, False)
        if story != None:
            for call in story.procs:
                existing = function_map.get(call.name, None)
                if existing and len(call.params) < len(existing.parameters):
                    print("Found overloads for", existing.name)
                    params = []
                    for i in range(len(call.params)):
                        type_str = call.params[i]
                        t = name_to_type.get(type_str)
                        params.append(FuncVariable(f"a{i}", t.id))
                        
                    existing.overloads.append(CallDefinition(existing.name, params))
            
    export(output_path)

if __name__ == "__main__":
    default_output_path = Path(script_dir.joinpath("output/lua/Osi.lua"))
    default_divine_path = Path(os.environ.get("LSLIB_PATH", None))

    parser = argparse.ArgumentParser()
    parser.add_argument("-h", "--header", type=Path, required=True, help="The path to a story_header.div file.")
    parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output file. Defaults to output/lua/Osi.lua")
    parser.add_argument("-d", "--divine", type=Path, default=default_divine_path, help="The path to divine.exe. Only used if a story.div.osi is included.")
    parser.add_argument("-f", "--file", type=Path, help="The path to a save file or story.div.osi to extract Osiris data from. This is only used to generate function overloads for calls that also have procs defined.")

    parser.description = "Generate an lua annotations helper file, for Osi, from a story_header.div"
    new_line = "\n    "
    parser.usage = f"""
    Example usage:
    python create_osi_lua.py -h "G:/Modding/BG3/_Extracted/Mods/Gustav/Story/RawFiles/story_header.div" -d "C:\lslib\divine.exe" -f "G:/Modding/BG3/_Extracted/Mods/GustavDev/Story/story.div.osi"
    """
    args = parser.parse_args()
    
    output_path:Path = args.output
    osi_file:Path = args.file
    lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")
    run(output_path, osi_file, lslib_dll)