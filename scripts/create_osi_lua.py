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
        print("Error writing '{}': {}".format(path.name, e))
    return False

def is_empty(line):
    return line in ['\n', '\r\n']

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

#pattern_call = r"^(call|syscall|event)\s*?(.*?)\((.*)\) .*$"
pattern_call = re.compile("^(call)\s*?(.*?)\((.*)\) .*$")
pattern_event = re.compile("^(event)\s*?(.*?)\((.*)\) .*$")
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

func_template_nodesc_noparams = """
function Osi.{name}({params_func}) end"""

enum_alias_template = """---@alias {name}
{entries}
"""

# These types are essentially synonymous, so we just use the lua type name instead
name_remap = {
    "INTEGER": "integer", # id 1
    "REAL": "number", # id 3
    "STRING": "string" # id 4
}

# A dictionary of all the base type IDs to their lua types. The starred ones are handled in this code by name_remap.
# The unstarred types have no strict lua equivalent, so we alias them to the nearest lua type
type_remap = {
    1: "integer", # *INTEGER
    2: "integer", # INTEGER64
    3: "number", # *REAL
    4: "string", # *STRING
    5: "string" # GUIDSTRING
}

CustomAliases = {
    "EQUIPMENTSLOTNAME": [
        "Melee Main Weapon",
        "Melee Offhand Weapon",
        "Ranged Main Weapon",
        "Ranged Offhand Weapon",
        "Helmet",
        "Breast",
        "Cloak",
        "Ring",
        "Underwear",
        "Boots",
        "Gloves",
        "Amulet",
        "Ring2",
        "VanityBody",
        "VanityBoots",
    ]
}

# dict<func_name, dict<arg_name, proper_type_string>>
CustomFunctionTypes = {
    "GetEquippedItem": {"Slotname": "EQUIPMENTSLOTNAME"},
    "CharacterDisarmed": {"SlotName": "EQUIPMENTSLOTNAME"}
}

# For when the overload skips one or more arguments found in the "original"
ManualOverloadFix = {
    "Die": {3: ["target:GUIDSTRING", "deathType:DEATHTYPE", "generateTreasure:integer"]},
    "QuestUpdate": {2: ["questID:string", "stateID:string"]}, # Applies to all DB_Players
    "RequestActiveRoll": {5: ["roller:CHARACTER", "rollSubject:GUIDSTRING", "rollType:string", "difficultyClassID:DIFFICULTYCLASS", "event:string"]},
    "RequestPassiveRoll": {5: ["roller:CHARACTER", "rollSubject:GUIDSTRING", "rollType:string", "difficultyClassID:DIFFICULTYCLASS", "event:string"]},
    "Use": {3: ["character:CHARACTER", "item:ITEM", "event:string"]},
}

LuaManualRenaming = {
    "gUIDstring": "guidString",
    "slotname": "slotName",
}

# These functions have Procs with more variables than the Call. Only the additional arguments are given.
# dict<func_name, dict<arg_idx, better_arg_name>>
ProcExtensions = {
    "SetHitpointsPercentage": {3: "onlyIfDifferentRounded"}
}

# The functions with these refs should not be output at all
IgnoreProcs = {
    "ItemMoveToPosition": 8, # deprecated, just calls the 7-arg version without the 8th
    "ItemMoveTo": 7, # deprecated, just calls the 6-arg version without the 7th
}

types:dict[int, 'OsirisType'] = {}

def is_guid_alias(a,b):
    a_type = types.get(a)
    b_type = types.get(b)
    return a_type and a_type.actual_id == 5 and b_type and b_type.actual_id == 5

@dataclass
class EnumValue:
    name:str
    value:int
    
    def to_lua(self):
        #return f"---| \"{self.name}\" # {self.value}"
        return f"---| `{self.value}` # {self.name}"
        #return f"{self.name} = {self.value}"

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
    
    # Has no uses (except by itself) in this repo atm
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
        
    def get_lua_name(self):
        result = self.name.strip()
        if result.upper() == result:
            result = result.lower()
        if "_" in result:
            result = result.replace("_", "")
        if result != "":
            result = result[0].lower() + result[1:]
        renamed_result = LuaManualRenaming.get(result)
        if renamed_result:
            return renamed_result
        return result
        
    def export_type(self, func_name:str = "", type_override:OsirisType = None):
        if type_override:
            return type_override.name
        func_types = CustomFunctionTypes.get(func_name)
        if func_types:
            override_type = func_types.get(self.name)
            if override_type:
                return override_type
        t = types.get(self.type, None)
        if t:
            return t.name
        return "any"

# boolean is ordinarily not a valid Osiris value, but it's returned by QRY_ functions
@dataclass
class BoolFuncVariable(FuncVariable):
        
    def export_type(self, func_name:str = "", type_override:OsirisType = None):
        return "boolean"

# These function variables can be nil instead (only for DB calls atm)
@dataclass
class OptionalFuncVariable(FuncVariable):
        
    def export_type(self, func_name:str = "", type_override:OsirisType = None):
        t = super().export_type(func_name, type_override)
        if t != "any":
            t += "?"
        return t

# Represents an array of tuples, the closest known way to model the return value of DB Get functions
@dataclass
class TupleArrayFuncVariable(FuncVariable):
    type:list[FuncVariable] = field(default_factory=list)
        
    def export_type(self, func_name:str = "", type_override:OsirisType = None):
        if type_override:
            raise ValueError("type_override is unsupported for this type")
        t = "{"
        for i in range(len(self.type)):
            t += "{}[{}]: {}".format("" if i == 0 else ", ", i+1, self.type[i].export_type(func_name))
        t += "}[]"
        return t

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

    def export_as_overload(self, regular_params:list[FuncVariable]):
        custom_overloads = ManualOverloadFix.get(self.name)
        if custom_overloads:
            custom_overload = custom_overloads.get(len(self.parameters))
            if custom_overload:
                params_txt = ", ".join(custom_overload)
                return f"---@overload fun({params_txt})"

        text = []
        index = 0
        for entry in self.parameters:
            existing = regular_params[index]
            name = entry.get_lua_name()
            type_override = None
            if existing != None and (existing.type == entry.type or is_guid_alias(existing.type, entry.type)):
                name = existing.get_lua_name()
                if existing.type != entry.type:
                    type_override = types.get(5)
            text.append(f'{name}:{entry.export_type(name, type_override)}')
            index += 1
        params_txt = ", ".join(text)
        #params_txt = ", ".join([f'{x.get_lua_name()}:{x.export_type(self.name)}' for x in self.parameters])
        return f"---@overload fun({params_txt})"

    def export_overloads(self):
        if len(self.overloads) > 0:
            txt = "\n".join([x.export_as_overload(self.parameters) for x in self.overloads])
            return txt + "\n"
        return ""
    
    def export_alias(self):
        params_str = ""
        i = 0
        count = len(self.parameters)
        for p in self.parameters:
            i = i + 1
            params_str += f"{p.get_lua_name()}:{p.export_type(self.name)}"
            if (i < count):
                params_str += ", "
        return f"---@alias Osiris{self.name}Callback fun({params_str})"

    def export(self):
        params_doc = self.export_overloads()
        params_func = ""
        i = 0
        count = len(self.parameters)
        for p in self.parameters:
            i = i + 1
            params_doc += "---@param {} {}".format(p.get_lua_name(), p.export_type(self.name))
            params_func += p.get_lua_name()
            if (i < count):
                params_doc += '\n'
                params_func += ", "
        template = func_template
        if self.description == "":
            template = func_template_nodesc
            if len(self.parameters) == 0:
                return func_template_nodesc_noparams.format(name = self.name, params_func = params_func, desc=self.description)
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
            params_doc += "---@param {} {}".format(p.get_lua_name(), p.export_type(self.name))
            params_func += p.get_lua_name()
            if (i < count):
                params_doc += '\n'
                params_func += ", "
        i = 0
        count = len(self.out)
        if (count > 0 and len(self.parameters) > 0): 
            params_doc += '\n'
        for p in self.out:
            i = i + 1
            params_doc += "---@return {} {}".format(p.export_type(), p.get_lua_name())
            if (i < count):
                params_doc += '\n'
        template = func_template
        if self.description == "":
            template = func_template_nodesc
        return template.format(params_doc = params_doc, 
            name = self.name, params_func = params_func, desc=self.description)

@dataclass
class DatabaseDefinition(CallDefinition):

    def export(self):
        params_doc = super().export()
        params_doc += '\n'
        params_as_opt = list(map(lambda x: OptionalFuncVariable(x.name, x.type), self.parameters))
        params_doc += CallDefinition(self.name + ":Delete", params_as_opt).export()
        params_doc += '\n'
        ret_type = TupleArrayFuncVariable("", self.parameters)
        params_doc += QueryDefinition(self.name + ":Get", params_as_opt, [ret_type]).export()
        return params_doc

name_to_type:dict[str, OsirisType] = {}

# TODO: keep only the names here instead and index function_map?
call_definitions:list[CallDefinition] = []
query_definitions:list[QueryDefinition] = []
event_definitions:list[CallDefinition] = []
proc_definitions:list[CallDefinition] = []
user_query_definitions:list[QueryDefinition] = []
database_definitions:list[DatabaseDefinition] = []

function_map:dict[str, CallDefinition|QueryDefinition|DatabaseDefinition] = {}

def get_param_type(match):
    t = name_to_type.get(match, None)
    if t != None:
        return t.id
    return match

def build_call(target_dict:list, pattern:re.Pattern[str], line):
    m = pattern.search(line)
    if m:
        func_name = m.group(2)
        params_text = m.group(3)
        params_match = pattern_params.finditer(params_text)
        
        call = CallDefinition(func_name)
        for match in params_match:
            param_type = get_param_type(match.group(1))
            param_name = match.group(2)

            total_duplicates = call.has_param(param_name)
            if total_duplicates > 0:
                param_name = "{}{}".format(param_name, total_duplicates+1)
            
            p = FuncVariable(param_name, param_type)
            call.parameters.append(p)
        target_dict.append(call)
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
        if "call " in line in line:
            build_call(call_definitions, pattern_call, line)
        elif "query " in line in line:
            build_query(line)
        elif "event " in line in line:
            build_call(event_definitions, pattern_event, line)
    #print("{} | {} {}".format(line, "query" in line, "syscall " in line))

def get_types_export():
    base_types = [x for x in types.values() if x.id == x.actual_id]
    enum_types = [x for x in types.values() if len(x.enum_values) > 0]
    alias_types = [x for x in types.values() if not x in base_types and not x in enum_types]
    
    return (
        "\n".join([x.export_lua() for x in base_types if not x.skip_export]),
        "\n".join([x.export_lua() for x in alias_types if not x.skip_export]),
        "\n".join([x.export_lua() for x in enum_types if not x.skip_export]),
    )

custom_alias_template = "---@alias {name} {values}"

def dict_to_alias(key:str, entries:list[str]):
    return custom_alias_template.format(name=key, values="|".join([f'"{x}"' for x in sorted(entries)]))

def export(output_path:Path, do_sort:bool=False):
    osi_template = """---@meta
---@diagnostic disable

--#region Types

--Base Types
{types}

--Alias Types
{aliases}

--Enum Types
{enums}
--#endregion

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
    
    def get_sorted(target:list[CallDefinition|QueryDefinition]):
        if do_sort:
            return sorted(target, key=lambda x: x.name)
        return target

    types_str,aliases_str,enums_str = get_types_export()
    calls_str = "\n".join([function_map[x.name].export() for x in get_sorted(call_definitions)])
    queries_str = "\n".join([x.export() for x in get_sorted(query_definitions)])
    
    custom_aliases_str = "\n".join([dict_to_alias(k,v) for k,v in CustomAliases.items()])
    aliases_str = f"\n--Custom Aliases (not generated with story_header.div)\n\n{custom_aliases_str}\n\n{aliases_str}"

    output_str = osi_template.format(types=types_str, aliases=aliases_str, enums=enums_str, queries=queries_str, calls=calls_str)

    export_file(output_path, output_str)

    def export(defs, file):
        defs_str = ""
        for func in defs:	
            defs_str += '{}\n'.format(func.export())

        output_str = f"""---@meta
---@diagnostic disable

if Osi == nil then Osi = {{}} end
{defs_str}"""

        export_file(output_path.parent.joinpath(file), output_str)
    
    if len(event_definitions) > 0:
        events_callbacks_str = ""
        events_str = ""
        events_func_str = ""
        events = get_sorted(event_definitions)
        for func in events:
            events_func_str += f"\t{func.export()}\n"
            field_str = f"---@field RegisterListener fun(id:\"{func.name}\", arity:{len(func.parameters)}, eventType:OsirisEventType, callback:Osiris{func.name}Callback):integer"
            events_str += f"{field_str}\n"
            events_callbacks_str += '{}\n'.format(func.export_alias())

        events_output_str = f"""---@meta
---@diagnostics disable

if Ext == nil then Ext = {{}} end

-- #region Callbacks
{events_callbacks_str}
-- #endregion

---@class Ext_Osiris
---@field RegisterListener fun(id:string, arity:integer, eventType:OsirisEventType, callback:function):integer
---@field UnregisterListener fun(subscriberId:integer)
{events_str}Ext.Osiris = {{}}
"""
        export_file(output_path.parent.joinpath("Ext.Osiris.RegisterListener.lua"), events_output_str)
        
        events_output_str = f"""---@meta
---@diagnostics disable

if Osi == nil then Osi = {{}} end
{events_func_str}"""

        export_file(output_path.parent.joinpath("Osi.Events.lua"), events_output_str)
        
        arity_entries = "\n".join([f"\t{x.name} = {len(x.parameters)}," for x in events])
        event_arity_output = f"""local EventArity = {{
{arity_entries}
}}"""
        export_file(output_path.parent.joinpath("EventArity.lua"), event_arity_output)

    if len(proc_definitions) > 0:
        export(proc_definitions, "Osi.PROC.lua")
    
    if len(user_query_definitions) > 0:
        export(user_query_definitions, "Osi.QRY.lua")
    
    if len(database_definitions) > 0:
        export(database_definitions, "Osi.DB.lua")

def run(header_file:Path, output_path:Path, osi_file:Path, lslib_dll:Path, do_sort:bool=False, do_db:bool=False, do_extra:bool=False):
    print(f"Parsing header: {header_file}")
    with open(header_file.absolute()) as f:
        lines = f.readlines()
        for line in lines:
            process_line(line.strip())
    
    def convert_params(param_strs):
        params = []
        for i in range(len(param_strs)):
            type_str = param_strs[i]
            t = name_to_type.get(type_str)
            if t:
                params.append(FuncVariable(f"a{i}", t.id))
            else:
                params.append(BoolFuncVariable("", -1))
        return params
    
    if do_db or do_extra or (osi_file.exists() and lslib_dll.exists()):
        print("Getting proc overloads from story.div.osi")
        story = extract_osiris.run(osi_file, lslib_dll, None, False)
        if story == None:
            raise AssertionError("extract_osiris.py did not error but did not return OsirisResults!")
        print(f"Scanning {len(story.procs)} PROCs")
        for call in story.procs:
            if IgnoreProcs.get(call.name) == len(call.params):
                continue

            existing = function_map.get(call.name, None)
            if existing or do_extra:
                params = convert_params(call.params)
                call_def = CallDefinition(call.name, params)
                if existing:
                    if len(call.params) < len(existing.parameters):
                        existing.overloads.append(call_def)
                    elif call.name in ProcExtensions:
                        params = call_def.parameters
                        for i in range(len(params)):
                            if i < len(existing.parameters):
                                if params[i].type != existing.parameters[i].type:
                                    raise AssertionError(f"Move {call.name} from ProcExtensions to ManualOverloadFix: " +
                                                         "types don't match the base!")
                                params[i].name = existing.parameters[i].name
                            elif i in ProcExtensions[call.name]:
                                params[i].name = ProcExtensions[call.name][i]
                        call_def.overloads = existing.overloads
                        existing.overloads = {}
                        call_def.overloads.append(existing)
                        function_map[call.name] = call_def
                    else:
                        print('Please add overload with more parameters than "normal" to IgnoreRefs or ProcExtensions:',
                              f"{len(call.params)} vs {len(existing.parameters)}: {call}")
                elif do_extra:
                    proc_definitions.append(call_def)
        if do_extra:
            print(f"Scanning {len(story.user_queries)} QRYs")
            for qry in story.user_queries:
                params = convert_params(qry.params)
                out = convert_params(qry.return_params)
                if len(out) == 0:
                    out = {FuncVariable('', )}
                user_query_definitions.append(QueryDefinition(qry.name, params, out))
        if do_db:
            print(f"Scanning {len(story.databases)} DBs")
            for entry in story.databases:
                params = convert_params(entry.params)
                db = DatabaseDefinition(entry.name, params)
                database_definitions.append(db)
                function_map[db.name] = db
    else:
        print(f"--osi {osi_file} or --divine {lslib_dll} do not exist - skipping.")
    
    export(output_path, do_sort)
    print("Done!")
    print(output_path)

if __name__ == "__main__":
    default_output_path = Path(script_dir.parent.joinpath("generated/Osi.lua"))
    default_divine_path = common.get_lslib_path()
    
    debug = True
    
    parser = argparse.ArgumentParser()
    parser.add_argument("--header", type=Path, required=not debug, default=Path(script_dir.parent.joinpath("references", "story_header.div")), help="The path to a story_header.div file.")
    parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output file. Defaults to generated/Osi.lua")
    parser.add_argument("--divine", type=Path, default=default_divine_path, help="The path to divine.exe. Only used if a story.div.osi is included.")
    parser.add_argument("--osi", type=Path, help="The path to a save file or story.div.osi to extract Osiris data from.")
    parser.add_argument("--sort", default=False, action='store_true', help="Sort all function definitions alphabetically.")
    parser.add_argument("--db", default=False, action='store_true', help="Whether to generate Osi.Databases.lua as well.")
    parser.add_argument("--extra", default=False, action='store_true', help="Whether to generate files for PROC_s and QRY_s as well.")
    
    parser.description = "Generate an lua annotations helper file, for Osi, from a story_header.div"
    new_line = "\n    "
    parser.usage = f"""
    Example usage:
    python create_osi_lua.py --header "G:/Modding/BG3/_Extracted/Mods/Gustav/Story/RawFiles/story_header.div" --divine "C:\lslib\divine.exe" --osi "G:/Modding/BG3/_Extracted/Mods/GustavDev/Story/story.div.osi"
    """
    args = parser.parse_args()
    
    if debug:
        #args.header = Path("G:/Modding/BG3/_Extracted/_Patches/Patch1/Mods/Gustav/Story/RawFiles/story_header.div")
        args.sort = True
        args.osi = Path(script_dir.parent.joinpath("references", "story.div.osi"))
    
    header_file:Path = args.header
    output_path:Path = args.output
    osi_file:Path = args.osi
    lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")
    do_sort:bool = args.sort == True
    do_db:bool = args.db == True
    do_extra:bool = args.extra == True
    run(header_file, output_path, osi_file, lslib_dll, do_sort, do_db, do_extra)