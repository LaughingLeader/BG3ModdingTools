from pathlib import Path
from typing import List
import argparse
from numpy import int64
import re
import pyperclip

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

version_pattern = re.compile(r"(\d+)\.(\d+)\.(\d+)\.(\d+)")

class Version():
    def __init__(self):
        self.major = 0
        self.minor = 0
        self.revision = 0
        self.build = 0
        
    @property
    def version_str(self)->str:
        return f"{self.major}.{self.minor}.{self.revision}.{self.build}"
    
    def parse_string(self, v:str)->bool:
        match = version_pattern.match(v)
        if match:
            self.major = int(match.group(1)) or 0
            self.minor = int(match.group(2)) or 0
            self.revision = int(match.group(3)) or 0
            self.build = int(match.group(4)) or 0
            return True
        return False
    
    def parse_integer(self, v:int64)->bool:
        if v is not None:
            self.major = v >> 55
            self.minor = (v >> 47) & 0xFF
            self.revision = (v >> 31) & 0xFFFF
            self.build = v & 0x7FFFFFFF
            return True
        return False
    
    @property
    def version_int(self)->int64:
        return int64((self.major << 55) + (self.minor << 47) + (self.revision << 31) + self.build)

parser = argparse.ArgumentParser(description='Generate or conversion version numbers to strings and back.')
parser.add_argument("version", nargs="?", default="1.0.0.0")
args = parser.parse_args()

version = Version()

if "." in args.version:
    if version.parse_string(args.version):
        version_int = str(version.version_int)
        print(f"Copied {version_int} to the clipboard.")
        pyperclip.copy(version_int)
    else:
        print(f"Failed to parse {args.version}")
else:
    if version.parse_integer(int64(args.version)):
        print(f"Copied {version.version_str} to the clipboard.")
        pyperclip.copy(version.version_str)
    else:
        print(f"Failed to parse {args.version}")
    
print(f"{version.version_str} = {version.version_int}")