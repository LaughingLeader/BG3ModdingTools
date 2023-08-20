from pathlib import Path
import lxml.etree as ET
from numpy import int64
from dataclasses import dataclass
import argparse
from version import Version
import os

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

@dataclass
class ModInfo:
	name:str
	uuid:str
	version:Version

	def __str__(self) -> str:
		return f"[{self.name}] Version({self.version.version_str})[{self.version.version_int}] UUID({self.uuid})"

default_output_path = Path(script_dir.joinpath("output\\meta\\"))
default_divine_path = Path(os.environ.get("LSLIB_PATH", None))

## cli args here
parser = argparse.ArgumentParser()
parser.add_argument("-d", "--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")
parser.add_argument("-f", "--data", type=Path, help="The path to the BG3 data folder.")

parser.description = "Extract the UUID/Version64/Name of all mods in the data folder, using LSLib."
new_line = "\n    "
parser.usage = f"""
Example usage:
python extract_mod_meta.py -d "C:\lslib\divine.exe" -f "C:/Games/Steam/steamapps/common/Baldurs Gate 3/Data"
"""

args = parser.parse_args()
data_dir:Path = args.data
output_dir:Path = args.output
lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")

if not common.import_lslib(lslib_dll):
    raise FileNotFoundError("A valid path to LSLib.dll is required.")

from System.IO import StreamReader # type: ignore 

from LSLib.LS import ModResources # type: ignore
from LSLib.LS import ModPathVisitor # type: ignore
from LSLib.LS import Story # type: ignore

mod_resources = ModResources()
mod_helper = ModPathVisitor(mod_resources)
mod_helper.Game = Story.Compiler.TargetGame.BG3
mod_helper.CollectGlobals = False
mod_helper.CollectLevels = False
mod_helper.CollectStoryGoals = False
mod_helper.CollectStats = False
mod_helper.DiscoverBuiltinPackages(str(data_dir))

mods:list[ModInfo] = []

for kvp in mod_resources.Mods:
	pakPath = kvp.Key
	modInfo = kvp.Value
	stream = modInfo.Meta.MakeStream()
	reader = StreamReader(stream)
	text:str = reader.ReadToEnd()
	reader.Dispose()
	stream.Dispose()
	modInfo.Meta.Dispose()

	meta_xml:ET._Element = ET.XML(text.encode("utf-8"), None)
	name = ""
	uuid = ""
	version = Version()
	node:ET._Element
	for node in meta_xml.iterfind("./region/node/children/node[@id='ModuleInfo']/attribute", None):
		value = node.get("value", "")
		match(node.get("id", "")):
			case "Version64":
				version.parse_integer(int64(value))
			case "Name":
				name = value
			case "UUID":
				uuid = value
	if uuid != "":
		mod = ModInfo(name, uuid, version)
		mods.append(mod)
output_file = output_dir.joinpath("Mods.txt")
output_file.parent.mkdir(parents=True, exist_ok=True)
output_file.write_text("\n".join([str(x) for x in sorted(mods, key=lambda m: m.name)]), encoding="utf-8")
print(f"Wrote data to {output_file}")