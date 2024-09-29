import os
from pathlib import Path
import argparse
import sys

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

default_output_path = Path(script_dir.joinpath("output\\loca\\"))
default_divine_path = common.get_lslib_path()

## cli args here
parser = argparse.ArgumentParser()
parser.add_argument("-d", "--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
parser.add_argument("-o", "--output", type=Path, help="The output file path.")
parser.add_argument("-f", "--file", type=Path, required=True, help="The file to convert.")

parser.description = "Convert localization files (xml/loca)."
new_line = "\n    "
parser.usage = f"""
Example usage:
python convert_loca.py -d "C:\lslib\divine.exe" -f "MyMod.loca"
"""

args = parser.parse_args()

target_file:Path = args.file
output_file:Path = args.output

if target_file.exists():
    lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")

    if lslib_dll.exists():
        import pythonnet
        pythonnet.load('coreclr')
        import clr
        sys.path.append(str(lslib_dll.parent.absolute()))
        clr.AddReference("LSLib") # type: ignore 
        clr.AddReference("System") # type: ignore 

        from LSLib.LS import LocaUtils, LocaFormat # type: ignore 
        from System.IO import File, FileMode # type: ignore 
        
        in_format = LocaFormat.Xml
        out_format = LocaFormat.Loca
        
        ext = target_file.suffix.lower()
        
        if ext == ".xml":
            in_format = LocaFormat.Xml
            out_format = LocaFormat.Loca
        elif ext == ".loca":
            in_format = LocaFormat.Loca
            out_format = LocaFormat.Xml
        
        if output_file is None:
            if out_format == LocaFormat.Xml:
                output_file = target_file.with_suffix(".xml")
            elif out_format == LocaFormat.Loca:
                output_file = target_file.with_suffix(".loca")

        fs = File.Open(str(target_file.absolute()), FileMode.Open)
        resource = LocaUtils.Load(fs, in_format)
        LocaUtils.Save(resource, str(output_file.absolute()), out_format)
        fs.Dispose()
        print(f"Converted {target_file} to {output_file}")
    else:
        raise FileNotFoundError("Failed to find LSLib.dll in the provided divine path.")
else:
    raise FileNotFoundError("A valid path to a xml/loca file is required.")