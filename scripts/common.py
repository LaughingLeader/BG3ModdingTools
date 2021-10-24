from pathlib import Path

def trim(text:str)->str:
    return "\n".join([s for s in text.splitlines() if s.strip()])

def clear_log(file_name:str)->bool:
    log_path = Path(__file__).parent.joinpath(f"logs/{file_name}").with_suffix(".log")
    with log_path.open('w', encoding='utf-8') as f:
        f.write('')
        return True
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