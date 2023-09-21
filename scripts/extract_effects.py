import os
from pathlib import Path
import lxml.etree as ET
from numpy import int64
import argparse

from dataclasses import dataclass

import common
script_name = Path(__file__).stem
log = common.init_log(script_name, True)

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
default_divine_path = Path(os.environ.get("LSLIB_PATH", None))

effects:dict[str,Effect] = {}

def parse_files(files:list[Path], output_dir:Path):
    for f_path in files:
        with f_path.open("rb") as f:
            try:
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
            except:
                pass
                    
    output_file = output_dir.joinpath("Effects.tsv")
    sorted_effects = [str(effects[k]) for k in sorted(effects.keys())]
    output_txt = "Name\tUUID\tFilePath\n"
    output_file.write_text(output_txt + "\n".join(sorted_effects), encoding="utf-8")
    log("Done")

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")
    parser.add_argument("-e", "--effects", type=Path, default=Path("G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/Effects"), help="The effects directory.")
    parser.add_argument("--allcontent", default=False, action='store_true', help="If set, the script will look for all Content folders under the given -e path.")
    parser.add_argument("--convertlsf", default=False, action='store_true', help="Convert all lsf files in the given folder before parsing. Requires LSLIB_PATH to be set.")

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
    all_content:bool = args.allcontent
    convert_lsf:bool = args.convertlsf
    
    directories:list[Path] = []
    if all_content:
        directories = list(data_dir.glob("**/Content"))
    else:
        directories.append(data_dir)
    
    if convert_lsf:
        if common.import_lslib(default_divine_path):
            from LSLib.LS import ResourceUtils, ResourceConversionParameters # type: ignore 
            from LSLib.LS.Enums import Game, ResourceFormat # type: ignore 
            conversionParams = ResourceConversionParameters.FromGameVersion(Game.BaldursGate3)
            for dir in directories:
                for x in dir.rglob("*.lsf"):
                    output_file = x.with_suffix(".lsx")
                    log(f"Converting {x} to {output_file}")
                    try:
                        resource = ResourceUtils.LoadResource(str(x))
                        ResourceUtils.SaveResource(resource, str(output_file), ResourceFormat.LSX, conversionParams)
                    except Exception as e:
                        log(e)
        else:
            log("LSLIB_PATH environment variable not set.")

    files = []

    for dir in directories:
        for x in dir.rglob("*.lsx"):
            files.append(x)
    
    log(f"Parsing {len(files)} files.")
    parse_files(files, output_dir)
