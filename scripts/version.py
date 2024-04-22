from pathlib import Path
from typing import List
import argparse
from numpy import int64
import re
import pyperclip
from lxml import etree
import os

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

version_pattern = re.compile(r"(\d+)\.(\d+)\.(\d+)\.(\d+)")

def EditMetaVer(file:Path, Ver):
    tree = etree.parse(str(file))
    myroot = tree.getroot()
    for attribute in myroot.iter('attribute'):
        if attribute.attrib['id'] == "Version64":
            # print(attribute.attrib['id']) # test
            # updates the price value
            attribute.set('value', Ver)
    tree.write(str(file), encoding='utf-8', xml_declaration=True) 

# Find all the meta.lsx under target folder
def find_meta_lsx(directory):
    meta_lsx_files = []

    # Walk through all directories and files recursively
    for root, dirs, files in os.walk(directory):
        # Check if "meta.lsx" exists in the current directory
        if "meta.lsx" in files:
            # If found, add the full path to the list
            meta_lsx_files.append(os.path.join(root, "meta.lsx"))

    return meta_lsx_files

class Version():
    def __init__(self):
        self.major:int64 = 0
        self.minor:int64 = 0
        self.revision:int64 = 0
        self.build:int64 = 0
        self.full:int64 = 0
        
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
        self.full = v
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

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate or convert version numbers to strings and back.')
    parser.add_argument("-v", "--version", type=str, required=True, help="A string version like 1.0.0.0, or an int64 like 36028797018963968")
    parser.add_argument("-f", "--file", type=Path, required=True, help="The file or folder to convert.")
    args = parser.parse_args()

    version = Version()
    input_file:Path = args.file
    newVer:str = args.version
    if "." in args.version:
        if version.parse_string(args.version):
            version_int = str(version.version_int)
            # print(f"Copied {version_int} to the clipboard.")
            # pyperclip.copy(version_int)
            if input_file.is_dir():
                meta_files = find_meta_lsx(input_file)
                for metaFile in meta_files:
                    EditMetaVer(metaFile, version_int)
            elif input_file.exists() and "meta.lsx" in str(input_file):
                EditMetaVer(input_file, version_int)
            else:
                print(f"Failed to set version to { input_file }")
        else:
            print(f"Failed to parse {args.version}")
    else:
        if version.parse_integer(int64(args.version)):
            # print(f"Copied {version.version_str} to the clipboard.")
            # pyperclip.copy(version.version_str)
            if input_file.is_dir():
                meta_files = find_meta_lsx(input_file)
                for metaFile in meta_files:
                    EditMetaVer(metaFile, newVer)
            elif input_file.exists() and "meta.lsx" in str(input_file):
                EditMetaVer(input_file, newVer)
            else:
                print(f"Failed to set version to { input_file }")
        else:
            print(f"Failed to parse {args.version}")
        
    print(f"{version.version_str} = {version.version_int}")