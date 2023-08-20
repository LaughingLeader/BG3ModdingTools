import os
from pathlib import Path
import argparse
import json

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

default_output_path = Path(script_dir.joinpath("output\\osiris\\"))
default_divine_path = Path(os.environ.get("LSLIB_PATH", None))

## cli args here
parser = argparse.ArgumentParser()
parser.add_argument("-d", "--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")
parser.add_argument("-f", "--file", type=Path, help="The path to a save file or story.div.osi to extract Osiris data from.")

parser.description = "Extract Osiris calls/queries/procs etc from a save file, or a story.div.osi, using lslib."
new_line = "\n    "
parser.usage = f"""
Example usage:
python extract_osiris.py -d "C:\lslib\divine.exe" -o "C:\Modding\BG3\OsirisInfo" -f "%LOCALAPPDATA%\Larian Studios\Baldur's Gate 3\PlayerProfiles\Public\Savegames\Story\Tav-24112318724__Quicksave1\Quicksave1.lsv"
"""

args = parser.parse_args()

target_file:Path = args.file

if target_file.exists():
    lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")

    if lslib_dll.exists():
        output_dir:Path = args.output
        output_dir.mkdir(exist_ok=True, parents=True)
        
        import clr
        from System.Reflection import Assembly # type: ignore 
        Assembly.LoadFrom(str(lslib_dll.absolute()))
        clr.AddReference("LSLib") # type: ignore 
        clr.AddReference("System") # type: ignore 

        input_file:Path = args.file

        from LSLib.LS import PackageReader, Package, AbstractFileInfo, LSFReader # type: ignore 
        from LSLib.LS.Story import StoryDebugExportVisitor, StoryReader # type: ignore 
        from System.IO import FileStream, MemoryStream, FileMode, FileAccess, FileShare # type: ignore 
        from System import Byte, Array # type: ignore 
        from System.Text import Encoding # type: ignore 
        
        def parse_data(result:str):
            entries = json.loads(result)
            
            types:dict[str,dict[str,str]] = entries["types"]
            functions:dict[str,dict[str,str]] = entries["functions"]

            type_dict:dict[int,str] = {}
            for type,data in types.items():
                type_dict[int(type)] = data['name']
            type_dict = dict(sorted(type_dict.items()))
            output_dir.joinpath("Types.tsv").write_text("\n".join([f"{k}\t{v}" for k,v in type_dict.items()]))
            
            def get_query_param(name, index, typeId, bitmask):
                is_out = bitmask >> ((index&~7) +(8 - (index&7))) != 0
                if is_out:
                    return f"[out]{type_dict.get(typeId)}"
                return type_dict.get(typeId)
            
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
                params = ', '.join([type_dict.get(x) for x in raw_params]) if raw_params is not None else ""
                match entry_type:
                    case "Database":
                        databases.append(f"{name}({params})")
                    case "Event":
                        events.append(f"{name}({params})")
                    case "Call":
                        calls.append(f"{name}({params})")
                    case "Query":
                        out_param_bitmask = data["signature"]["out"]
                        if out_param_bitmask and raw_params is not None:
                            out_param_bitmask = int(out_param_bitmask)
                            parsed_params = []
                            for i in range(len(raw_params)):
                                parsed_params.append(get_query_param(name, i+1, raw_params[i], out_param_bitmask))
                            params = ', '.join(parsed_params)
                            queries.append(f"{name}({params})")
                        else:
                            queries.append(f"{name}({params})")
                    case "UserQuery":
                        user_queries.append(f"{name}({params})")
                    case "Proc":
                        procs.append(f"{name}({params})")
                        
                
            output_dir.joinpath("Databases.txt").write_text("\n".join(sorted(databases)))
            output_dir.joinpath("Events.txt").write_text("\n".join(sorted(events)))
            output_dir.joinpath("Calls.txt").write_text("\n".join(sorted(calls)))
            output_dir.joinpath("Queries.txt").write_text("\n".join(sorted(queries)))
            output_dir.joinpath("Procs.txt").write_text("\n".join(sorted(procs)))
            output_dir.joinpath("OsirisQueries.txt").write_text("\n".join(sorted(user_queries)))
        
        def load_story(stream):
            reader = StoryReader()
            story = reader.Read(stream)
            data_stream = MemoryStream(4096)
            sev = StoryDebugExportVisitor(data_stream)
            sev.Visit(story)
            result = Encoding.UTF8.GetString(data_stream.ToArray())
            data_stream.Dispose()
            parse_data(result)
            
        if target_file.suffix == ".osi":
            fs = FileStream(str(target_file.absolute()), FileMode.Open, FileAccess.Read, FileShare.Read)
            load_story(fs)
            fs.Dispose()
            pass
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
                load_story(story_stream)
                story_stream.Dispose()
        elif target_file.suffix == ".json":
            with target_file.open("r", encoding="utf-8") as f:
                parse_data(f.read())
    else:
        raise FileNotFoundError("Failed to find LSLib.dll in the provided divine path.")
else:
    raise FileNotFoundError("A valid path to a save, story.div.osi, or debug.json (ConverterApp debug export) file is required.")