from pathlib import Path
from typing import Callable
import os
import sys

def trim(text:str)->str:
    return "\n".join([s for s in text.splitlines() if s.strip()])

def clear_log(file_name:str)->bool:
    log_path = Path(__file__).parent.joinpath(f"logs/{file_name}").with_suffix(".log")
    try:
        with log_path.open('w', encoding='utf-8') as f:
            f.write('')
            return True
    except: pass
    return False

def log(file_name:str, msg:str, do_print:bool = False):
    if do_print: print(msg)
    log_path = Path(__file__).parent.joinpath(f"logs/{file_name}").with_suffix(".log")
    log_path.parent.mkdir(exist_ok=True, parents=True)
    with log_path.open('a+', encoding='utf-8') as f:
        f.seek(0)
        data = f.read(100)
        if len(data) > 0 :
            f.write("\n")
        f.write(msg)

def init_log(file_name:str, do_print)->Callable[[str], None]:
    clear_log(file_name)
    return lambda msg: log(file_name,msg,do_print) # type: ignore 
        
def import_lslib(dll_path:Path)->bool:
    try:
        if dll_path.is_dir():
            dll_path = dll_path.joinpath("LSLib.dll")
        import pythonnet
        pythonnet.load('coreclr')
        import clr
        sys.path.append(str(dll_path.parent.absolute()))
        clr.AddReference("LSLib") # type: ignore 
        return True
    except Exception as e:
        print(e)
        return False
    
def get_lslib_path(get_divine:bool = False, return_none:bool = False)->Path:
    result = os.environ.get("LSLIB_PATH", None)
    if result:
        result = Path(result)
        if get_divine:
            if result.is_dir():
                exe_path = result.joinpath("divine.exe")
                if exe_path.exists:
                    result = exe_path
                elif result.joinpath("Tools").exists():
                    result = result.joinpath("Tools/divine.exe")
        return result
    if return_none: return None
    return Path("")