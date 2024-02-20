import os
from pathlib import Path
import argparse
import json
from dataclasses import dataclass,field

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

@dataclass
class OsirisEntry:
    name:str
    params:list[str] = field(default_factory=list)
    return_params:list[str] = field(default_factory=list)
    
    def __str__(self) -> str:
        params_str = ""
        param_total = len(self.params)
        return_total = len(self.return_params)
        if param_total > 0:
            params_str = ", ".join(self.params)
        return_params_str = ""
        if return_total > 0:
            return_params_str = ", ".join(self.return_params)
            if param_total > 0: 
                return_params_str = ", " + return_params_str 
        combined_params = params_str + return_params_str
        if combined_params != "":
            combined_params = f"({combined_params})"
        return f"{self.name}{combined_params}"
    
    def __repr__(self): return self.__str__()

class StrList(list):
    def export(self):
        return "\n".join([str(x) for x in self])

@dataclass
class OsirisResults:
    events:StrList[OsirisEntry]
    calls:StrList[OsirisEntry]
    queries:StrList[OsirisEntry]
    user_queries:StrList[OsirisEntry]
    procs:StrList[OsirisEntry]
    databases:StrList[OsirisEntry]

def run(target_file:Path, lslib_dll:Path, output_dir:Path = None, output_txt:bool = True)->OsirisResults:
    if not target_file.exists():
        raise FileNotFoundError("A valid path to a save, story.div.osi, or debug.json (ConverterApp debug export) file is required.")
    if not lslib_dll.exists():
        raise FileNotFoundError("Failed to find LSLib.dll in the provided divine path.")
    if output_dir:
        output_dir.mkdir(exist_ok=True, parents=True)

    import clr
    from System.Reflection import Assembly # type: ignore 
    Assembly.LoadFrom(str(lslib_dll.absolute()))
    clr.AddReference("LSLib") # type: ignore 
    clr.AddReference("System") # type: ignore

    from LSLib.LS import PackageReader, LSFReader # type: ignore 
    from LSLib.LS.Story import StoryDebugExportVisitor, StoryReader # type: ignore 
    from System.IO import FileStream, MemoryStream, FileMode, FileAccess, FileShare # type: ignore 
    from System import Byte, Array # type: ignore 
    from System.Text import Encoding # type: ignore 

    def parse_data(result:str):
        entries = json.loads(result)
        
        types:dict[str,dict[str,str]] = entries["types"]
        functions:dict[str,dict[str,str]] = entries["functions"]

        type_dict:dict[int,str] = {}
        for otype,data in types.items():
            type_dict[int(otype)] = data['name']
        type_dict = dict(sorted(type_dict.items()))
        
        def get_query_param(name, index, typeId, bitmask):
            is_out = bitmask >> ((index&~7) +(8 - (index&7))) != 0
            if is_out:
                return f"[out]{type_dict.get(typeId)}"
            return False
        
        events = []
        calls = []
        queries = []
        user_queries = []
        procs = []
        databases = []
        
        for _,data in functions.items():
            entry_type = data["type"]
            name = data["signature"]["name"]
            raw_params = data["signature"]["params"]
            params = [type_dict.get(x) for x in raw_params] if raw_params is not None else []
            match entry_type:
                case "Database":
                    databases.append(OsirisEntry(name, params))
                case "Event":
                    events.append(OsirisEntry(name, params))
                case "Call":
                    calls.append(OsirisEntry(name, params))
                case "Query":
                    out_param_bitmask = data["signature"]["out"]
                    if out_param_bitmask and raw_params is not None:
                        out_param_bitmask = int(out_param_bitmask)
                        out_params = []
                        params = []
                        for i in range(len(raw_params)):
                            param_id = raw_params[i]
                            out_param = get_query_param(name, i+1, param_id, out_param_bitmask)
                            if out_param:
                                out_params.append(out_param)
                            else:
                                params.append(type_dict.get(param_id))
                        queries.append(OsirisEntry(name, params, out_params))
                    else:
                        queries.append(OsirisEntry(name, params))
                case "UserQuery":
                    user_queries.append(OsirisEntry(name, params))
                case "Proc":
                    procs.append(OsirisEntry(name, params))
        
        def get_key(x): return x.name
        
        databases = StrList(sorted(databases, key=get_key))
        events = StrList(sorted(events, key=get_key))
        calls = StrList(sorted(calls, key=get_key))
        queries = StrList(sorted(queries, key=get_key))
        procs = StrList(sorted(procs, key=get_key))
        user_queries = StrList(sorted(user_queries, key=get_key))

        if output_txt:
            output_dir.joinpath("Types.tsv").write_text("\n".join([f"{k}\t{v}" for k,v in type_dict.items()]))
            output_dir.joinpath("Databases.txt").write_text(databases.export())
            output_dir.joinpath("Events.txt").write_text(events.export())
            output_dir.joinpath("Calls.txt").write_text(calls.export())
            output_dir.joinpath("Queries.txt").write_text(queries.export())
            output_dir.joinpath("Procs.txt").write_text(procs.export())
            output_dir.joinpath("OsirisQueries.txt").write_text(user_queries.export())
        return OsirisResults(events, calls, queries, user_queries, procs, databases)

    def load_story(stream)->OsirisResults:
        reader = StoryReader()
        story = reader.Read(stream)
        data_stream = MemoryStream(4096)
        sev = StoryDebugExportVisitor(data_stream)
        sev.Visit(story)
        result = Encoding.UTF8.GetString(data_stream.ToArray())
        data_stream.Dispose()
        return parse_data(result)
        
    if target_file.suffix == ".osi":
        fs = FileStream(str(target_file.absolute()), FileMode.Open, FileAccess.Read, FileShare.Read)
        result = load_story(fs)
        fs.Dispose()
        return result
    elif target_file.suffix == ".lsv":
        package_reader = PackageReader(str(target_file.absolute()))
        package = package_reader.Read()
        abstract_file_info = None
        for p in package.Files:
            if str.lower(p.Name) == "globals.lsf":
                abstract_file_info = p
                break
        if abstract_file_info is None:
            raise Exception("Failed to find globals.lsf in save file.")
        res_stream = abstract_file_info.MakeStream()
        resource = None
        try:
            res_reader = LSFReader(res_stream)
            resource = res_reader.Read()
            res_reader.Dispose()
        finally:
            abstract_file_info.ReleaseStream()
        if resource:
            story_node = resource.Regions["Story"].Children["Story"][0]
            story_stream = MemoryStream(Array[Byte](story_node.Attributes["Story"].Value))
            result = load_story(story_stream)
            story_stream.Dispose()
            return result
    elif target_file.suffix == ".json":
        with target_file.open("r", encoding="utf-8") as f:
            result = parse_data(f.read())
            return result

if __name__ == "__main__":
    default_output_path = script_dir.joinpath("output\\osiris\\")
    default_divine_path = common.get_lslib_path()
    default_input_path = script_dir.parent.joinpath("references\\story.div.osi")

    ## cli args here
    parser = argparse.ArgumentParser()
    parser.add_argument("-d", "--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
    parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")
    parser.add_argument("-f", "--file", type=Path, default=default_input_path, help="The path to a save file or story.div.osi to extract Osiris data from.")

    parser.description = "Extract Osiris calls/queries/procs etc from a save file, or a story.div.osi, using lslib."
    new_line = "\n    "
    parser.usage = f"""
    Example usage:
    python extract_osiris.py -d "C:\lslib\divine.exe" -o "C:\Modding\BG3\OsirisInfo" -f "%LOCALAPPDATA%\Larian Studios\Baldur's Gate 3\PlayerProfiles\Public\Savegames\Story\Tav-24112318724__Quicksave1\Quicksave1.lsv"
    """
    args = parser.parse_args()
    target_file:Path = args.file
    lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")
    output_dir:Path = args.output
    run(target_file, lslib_dll, output_dir)