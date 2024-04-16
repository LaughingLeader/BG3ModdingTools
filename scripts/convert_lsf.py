import os
from pathlib import Path
import argparse

import common
script_name = Path(__file__).stem
log = common.init_log(script_name, True)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

default_output_path = Path(script_dir.joinpath("output\\lsf\\"))
default_divine_path = common.get_lslib_path()

def on_error(file, e):
    log(f"Error converting file '{file}':\n{e}")
    
def on_progress(status, numerator, denominator):
    log(status)

def run(lslib_dll:Path, file_arg:Path, output_file:Path = None, in_type:str = ".lsf", out_type:str = ".lsx"):
    print(lslib_dll)
    if lslib_dll.exists():
        import pythonnet
        pythonnet.load('coreclr')
        import clr
        from System.Reflection import Assembly # type: ignore 
        Assembly.LoadFrom(str(lslib_dll.absolute()))
        clr.AddReference("LSLib") # type: ignore 

        from LSLib.LS import ResourceUtils, ResourceConversionParameters, ResourceLoadParameters # type: ignore 
        from LSLib.LS.Enums import Game, ResourceFormat # type: ignore
        
        load_params = ResourceLoadParameters.FromGameVersion(Game.BaldursGate3)
        conversion_params = ResourceConversionParameters.FromGameVersion(Game.BaldursGate3)
        
        input_format = ResourceUtils.ExtensionToResourceFormat(in_type)
        output_format = ResourceUtils.ExtensionToResourceFormat(out_type)
        
        files:list[Path] = [Path(s) for s in file_arg.split(";")]
                
        def process_file(input:Path, output:Path = None):
            ext = input.suffix.lower()
            
            if output is None:
                if ext != ".lsx":
                    output = input.with_suffix(".lsx")
                else:
                    output = input.with_suffix(".lsf")

            input_str = str(input.absolute())
            output_str = str(output.absolute())
            
            out_format = ResourceUtils.ExtensionToResourceFormat(output_str)
            resource = ResourceUtils.LoadResource(input_str, load_params)
            ResourceUtils.SaveResource(resource, output_str, out_format, conversion_params)
            log(f"Converted {input} to {output}")   
        
        for input_file in files:
            if input_file.is_dir():
                
                input_str = str(input_file.absolute())
                if output_file is None:
                    output_file = input_file
                output_str = str(output_file.absolute())
  
                log(f"Running in batch mode. ext({input_format})->({output_format})")
                log(f"Converting files in directory '{input_file}'.")
                utils = ResourceUtils()
                utils.errorDelegate = ResourceUtils.ErrorDelegate(on_error)
                utils.progressUpdate = ResourceUtils.ProgressUpdateDelegate(on_progress)
                utils.ConvertResources(input_str, output_str, input_format, output_format, load_params, conversion_params);
            elif input_file.exists():
                process_file(input_file, output_file)
    else:
        raise FileNotFoundError("Failed to find LSLib.dll", lslib_dll)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-d", "--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
    parser.add_argument("-o", "--output", type=Path, help="The output file path.")
    parser.add_argument("-f", "--file", type=str, required=True, help="A file, directory, or set of file paths (separated with ;) to convert.")
    parser.add_argument("--ext", type=str, default=".lsf", help="If -f is a directory, process only this input file type (defaults to .lsf).")
    parser.add_argument("--outputext", type=str, default=".lsx", help="If -f is a directory or set of files, make this the output file type  (defaults to .lsx).")

    parser.description = "Convert lsf files (lsf/lsb/lsx)."
    new_line = "\n    "
    parser.usage = f"""
    Example usage:
    python convert_lsf.py -d "C:\lslib\divine.exe" -f "SomeFile.lsf"
    """

    args = parser.parse_args()

    file_arg:str = args.file
    output_file:Path = args.output
    lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")
    in_type:str = args.ext
    out_type:str = args.outputext
    run(lslib_dll, file_arg, output_file, in_type, out_type)