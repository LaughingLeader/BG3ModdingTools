# pyright: reportUnknownVariableType=false, reportUnknownArgumentType=false
# pyright: reportUnknownMemberType=false, reportUnknownParameterType=false
# pyright: reportMissingImports=false
# pyright: reportAny=false

from dataclasses import dataclass, field
from io import BufferedReader
from typing import Literal
from PIL import Image
import numpy
import lxml.etree as ET
from pathlib import Path
import os
import argparse

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

@dataclass
class Icon:
    name:str = ""
    u1:float = 0
    u2:float = 0
    v1:float = 0
    v2:float = 0
    rect:tuple[Literal[0], Literal[0], Literal[0], Literal[0]] = field(default_factory=lambda:(0,0,0,0))
    
    def update_rect(self, atlas:"Atlas"):
        self.rect = (
            numpy.floor(atlas.tex_width * (self.u1)), 
            numpy.floor(atlas.tex_height * (self.v1)), 
            numpy.ceil(atlas.tex_width * (self.u2 - atlas.icon_offset)),
            numpy.ceil(atlas.tex_height * (self.v2 - atlas.icon_offset))
        )

@dataclass
class Atlas:
    name:str = ""
    icons:list["Icon"] = field(default_factory=lambda:[])
    texture_path:str = ""
    uuid:str = ""
    tex_width:int = 2048
    tex_height:int = 2048
    icon_width:int = 64
    icon_height:int = 64
    
    @property
    def icon_offset(self)->float:
        return float(0.5/self.tex_width)
    
    def __str__(self) -> str:
        return f"Atlas{{name({self.name}) texture_path({self.texture_path}) texture_size({self.tex_width},{self.tex_height}) icon_size({self.icon_width},{self.icon_height})}}"
    
    def parse(self, f:BufferedReader):
        elem:ET._Element
        for _,elem in ET.iterparse(f):
            if elem.tag == "node":
                node_id = elem.get("id")
                match(node_id):
                    case "TextureAtlasTextureSize":       
                        for id,value in [(x.get("id"), x.get("value")) for x in elem.iterdescendants()]:
                            if id == "Height":
                                self.tex_height = int(value)
                            elif id == "Width":
                                self.tex_width = int(value)
                    case "TextureAtlasIconSize":       
                        for id,value in [(x.get("id"), x.get("value")) for x in elem.iterdescendants()]:
                            if id == "Height":
                                atlas.icon_width = int(value)
                            elif id == "Width":
                                atlas.icon_height = int(value)
                    case "TextureAtlasPath":
                        for id,value in [(x.get("id"), x.get("value")) for x in elem.iterdescendants()]:
                            if id == "Path":
                                self.texture_path = value
                            elif id == "UUID":
                                self.uuid = value
                    case "IconUV":       
                        icon = Icon()
                        for id,value in [(x.get("id"), x.get("value")) for x in elem.iterdescendants()]:
                            match(id):
                                case "MapKey":
                                    icon.name = value
                                case "U1":
                                    icon.u1 = float(value)
                                case "U2":
                                    icon.u2 = float(value)
                                case "V1":
                                    icon.v1 = float(value)
                                case "V2":
                                    icon.v2 = float(value)
                        if icon.name != "":
                            icon.update_rect(self)
                            self.icons.append(icon)

default_output_path = script_dir.joinpath("output\\icons\\")

parser = argparse.ArgumentParser()
parser.add_argument("-d", "--data", type=Path, required=True, help="The path to a root Public/ModName directory with icon atlas and texture files.")
parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")

parser.description = "Extract individual icon images from icon atlases."
new_line = "\n    "
parser.usage = f"""
Example usage:
python extract_atlas.py -d "G:/Modding/BG3/_Extracted/Public/SharedDev"
"""

args = parser.parse_args()

data_dir:Path = args.data
icons_output:Path = args.output

atlases_dir = data_dir.joinpath("GUI")
if not atlases_dir.exists():
    raise FileNotFoundError(f"No GUI folder found in directory {atlases_dir}")

atlas_files:list[Path] = [x for x in atlases_dir.iterdir() if x.suffix == ".lsx"]

for atlas_path in atlas_files:
    atlas_xml = None
    with atlas_path.open("rb") as f:
        atlas_name = atlas_path.stem
        atlas = Atlas(atlas_name)
        atlas.parse(f)
        output_dir = default_output_path.joinpath(atlas.name)
        #output_dir.mkdir(parents=True, exist_ok=True)
        
        if atlas.texture_path == "":
            print(f"No texture path set for atlas:\n{atlas}")
            continue

        texture_path = data_dir.joinpath(atlas.texture_path)
        if texture_path.exists():
            output_dir.mkdir(parents=True, exist_ok=True)
            print(f"Opening texture: {texture_path}")
            with Image.open(texture_path).convert('RGBA') as img:
                for icon in atlas.icons:
                    #print(icon)
                    img_crop = img.crop(icon.rect)
                    result_image = Image.new('RGBA', (atlas.icon_width, atlas.icon_height), (0, 0, 0, 0))
                    #result_image.paste(img_crop, (0,0), mask=0)
                    result_image.alpha_composite(img_crop, (0,0))
                    filename = output_dir.joinpath(icon.name).with_suffix(".png")
                    #print("Writing icon to: {}".format(filename))
                    # if filename.exists() == True:
                    #     filename = output_dir.joinpath(icon.name + "(01)").with_suffix(".png")
                    result_image.save(filename)
        else:
            print(f"Texture '{texture_path}' does not exist!")

print("Done!")