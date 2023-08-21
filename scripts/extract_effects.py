import os
from pathlib import Path
import lxml.etree as ET
from numpy import int64
import argparse

from dataclasses import dataclass

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

@dataclass
class Effect:
    name:str
    uuid:str
    filepath:Path

    def __str__(self) -> str:
        return f"{self.name}\t{self.uuid}\t{self.filepath}"

default_output_path = Path(script_dir.joinpath("output\\effects\\"))

## cli args here
parser = argparse.ArgumentParser()
parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")
parser.add_argument("-e", "--effects", type=Path, default=Path("G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/Effects"), help="The effects directory.")

parser.description = "Extract effect data from a path."
new_line = "\n    "
parser.usage = f"""
Example usage:
python extract_effects.py -f "G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/Effects"
"""

args = parser.parse_args()

output_dir:Path = args.output
output_dir.mkdir(exist_ok=True, parents=True)
data_dir:Path = args.effects

effects:dict[str,Effect] = {}

for f_path in data_dir.rglob("*.lsx"):
    with f_path.open("rb") as f:
        meta_xml:ET._Element = ET.parse(f)
        #for node in meta_xml.iterfind("./region/node/children/node[@id='Resource']/attribute", None):
        for node in meta_xml.iterfind("./region/node/children/node[@id='Resource']", None):
            name = ""
            uuid = ""
            source_file:Path = None
            node:ET._Element
            is_effect = False
            for attr in node.iterchildren("attribute"):
                value = attr.get("value", "")
                match(attr.get("id", "")):
                    case "EffectName":
                        is_effect = True
                        name = value
                    case "SourceFile":
                        source_file = Path(value)
                    case "ID":
                        uuid = value
                if is_effect and source_file != None and uuid != "":
                    break
            if is_effect and name != "" and uuid != "":
                effect = Effect(name, uuid, source_file)
                effects[name] = effect
                
output_file = output_dir.joinpath("Effects.tsv")
sorted_effects = [str(effects[k]) for k in sorted(effects.keys())]
output_txt = "Name\tUUID\tFilePath\n"
output_file.write_text(output_txt + "\n".join(sorted_effects), encoding="utf-8")
print("Done")