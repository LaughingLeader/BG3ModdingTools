import os
import subprocess
from dataclasses import dataclass
from pathlib import Path
import argparse
import timeit

# External
from PIL import Image
import numpy
import send2trash

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

atlas_template = """<?xml version="1.0" encoding="UTF-8" ?>
<save>
    <version major="4" minor="0" revision="9" build="322"/>
    <region id="IconUVList">
        <node id="root">
            <children>{icons}
            </children>
        </node>
    </region>
    <region id="TextureAtlasInfo">
        <node id="root">
            <children>
                <node id="TextureAtlasIconSize">
                    <attribute id="Height" value="{icon_w}" type="int32" />
                    <attribute id="Width" value="{icon_h}" type="int32" />
                </node>
                <node id="TextureAtlasPath">
                    <attribute id="Path" value="{texture_path}" type="string" />
                    <attribute id="UUID" value="{texture_uuid}" type="FixedString" />
                </node>
                <node id="TextureAtlasTextureSize">
                    <attribute id="Height" value="{texture_width}" type="int32" />
                    <attribute id="Width" value="{texture_height}" type="int32" />
                </node>
            </children>
        </node>
    </region>
</save>
"""

@dataclass
class UV():
    u1:float
    v1:float
    u2:float
    v2:float

@dataclass
class Icon():
    image_path:Path
    pos:tuple[float,float]
    uv:UV
    image:Image.Image = None
    
    @property
    def name(self):
        return self.image_path.stem
    
    def __post_init__(self):
        self.image = Image.open(self.image_path).convert("RGBA")
    
    def to_xml(self):
        return """
                <node id="IconUV">
                    <attribute id="MapKey" value="{name}" type="FixedString" />
                    <attribute id="U1" value="{u1}" type="float" />
                    <attribute id="U2" value="{u2}" type="float" />
                    <attribute id="V1" value="{v1}" type="float" />
                    <attribute id="V2" value="{v2}" type="float" />
                </node>""".format(
                    name = self.name,
                    u1 = self.uv.u1,
                    v1 = self.uv.v1,
                    u2 = self.uv.u2,
                    v2 = self.uv.v2
                )

def get_images(directory):
    dir_path = Path(directory)
    files = dir_path.glob("*.png")
    return list(files)

def truncate(number, digits, round_num = True) -> float:
    stepper = 10.0 ** digits
    if round_num:
        return round(numpy.trunc(stepper * number) / stepper, digits - 1)
    else:
        return numpy.trunc(stepper * number) / stepper

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

parser = argparse.ArgumentParser(description='Create a texture atlas from a folder of icons.')
parser.add_argument("-i", "--icons", type=Path, required=True, help='The directory of icons to process.')
parser.add_argument("-a", "--atlas", type=Path, required=True, help='The path of the atlas file to create, such as Public/ModName_UUID/GUI/MyAtlas.lsx.')
parser.add_argument("-t", "--texture", type=Path, required=True, help='The path of the texture to create.')
parser.add_argument("-u", "--uuid", type=str, default="", help='The UUID to use for the atlas (defaults to a new UUID4).')
parser.add_argument("-m", "--mipmaps", action='store_true', help='Generate mipmaps (default False).')
parser.add_argument("-f", "--ddsformat", type=str, default="DXT5", help='The dds format to use (DXT1, DXT5 etc). Defaults to DXT5 (BC3_UNORM).')
parser.add_argument("--ddstool", type=Path, help='The path to the "DirectXTex texture processing library" (directory where texconv is).')
parser.add_argument("--iconsize", type=int, default=(64,64), nargs="+", help='The icon width/height/.')
parser.add_argument("--texturesize", type=int, default=(2048,2048), nargs="+", help='The texture width/height/.')
parser.usage = f"""
Example usage:
python create_atlas.py -i "G:/Modding/BG3/Mods/MyMod/Icons" -a "C:/BG3/Data/Public/MyModFolder/GUI/MyMod_Icons.lsx" -u 6bae909c-1736-48e7-ae19-314b3aa7b1f5 -t "C:/BG3/Data/Public/MyModFolder/Assets/Textures/Icons/MyMod_Icons.dds" --ddstool "C:/Portable/DirectXTex" --texturesize 1024 1024
"""

totalIcons = 0

def run():
    args = parser.parse_args()
    images_dir:Path = args.icons
    atlas_output:Path = args.atlas
    texture_output:Path = args.texture
    atlas_uuid:str = args.uuid
    dds_format:str = args.ddsformat
    icon_size:tuple[int,int] = args.iconsize
    texture_size:tuple[int,int] = args.texturesize
    
    if atlas_uuid is None or atlas_uuid == "":
        atlas_uuid = common.NewUUID()
    do_mipmaps:bool = args.mipmaps

    atlas_output = atlas_output.with_suffix(".lsx")
    texture_output = texture_output.with_suffix(".dds")
    temp_texture_png = texture_output.with_suffix(".png")
    root_data_dir = atlas_output.parent.parent.parent

    images = get_images(images_dir)
    common.log(script_name, f"Merging {len(images)} images.")

    icons = []

    padding = (float(0.5/texture_size[0]), float(0.5/texture_size[1]))
    col_max = texture_size[0] / icon_size[0]
    row_max = texture_size[1] / icon_size[1]

    x = 0
    y = 0

    # For some reason, the editor appends the first two icons to the end
    icons_first = []
    for img in images:
        # u1 = truncate(float(((icon_size * x) / texture_size) + padding), 9)
        # v1 = truncate(float(((icon_size * y) / texture_size) + padding), 9)
        # u2 = truncate(float(((icon_size * (x + 1)) / texture_size) - padding), 9)
        # v2 = truncate(float(((icon_size * (y + 1)) / texture_size) - padding), 9)
        round_num = True
        truncate_u1 = 7
        truncate_v1 = 8
        truncate_u2 = 7
        truncate_v2 = 7

        if x <= 1 and y == 0: 
            u1 = truncate(numpy.clip(float(((icon_size[0] * x) / texture_size[0]) + padding[0]), 0, 1.0), 9, round_num=True)
            v1 = truncate(numpy.clip(float(((icon_size[1] * y) / texture_size[0]) + padding[0]), 0, 1.0), 9, round_num=False)
            u2 = truncate(numpy.clip(float(((icon_size[0] * (x + 1)) / texture_size[1]) - padding[1]), 0, 1.0), 7, round_num=False)
            v2 = truncate(numpy.clip(float(((icon_size[1] * (y + 1)) / texture_size[1]) - padding[1]), 0, 1.0), 7, round_num=False)
        else:
            u1 = truncate(numpy.clip(float(((icon_size[0] * x) / texture_size[0]) + padding[0]), 0, 1.0), truncate_u1, round_num)
            v1 = truncate(numpy.clip(float(((icon_size[1] * y) / texture_size[0]) + padding[0]), 0, 1.0), truncate_v1, round_num)
            u2 = truncate(numpy.clip(float(((icon_size[0] * (x + 1)) / texture_size[1]) - padding[1]), 0, 1.0), truncate_u2, round_num)
            v2 = truncate(numpy.clip(float(((icon_size[1] * (y + 1)) / texture_size[1]) - padding[1]), 0, 1.0), truncate_v2, round_num)

        icon = Icon(img.resolve(), (x * icon_size[0], y * icon_size[1]), UV(u1, v1, u2, v2))

        if x <= 1 and y == 0:
            icons_first.append(icon)
        else:
            icons.append(icon)
        common.log(script_name, f"** Added icon '{icon.name}'.", False)
        x += 1
        if(x >= col_max):
            y += 1
            x = 0
        if (y > row_max):
            common.log(script_name, "[ERROR] Hit the max atlas size!")
            break

    icons.extend(icons_first)
    global totalIcons
    totalIcons = len(icons)

    def create_atlas_output(icons_str, icon_w, icon_h, 
            texture_path, uuid, texture_width, texture_height):
        return atlas_template.format(
            icons = icons_str,
            icon_w = icon_w,
            icon_h = icon_h,
            texture_path = texture_path,
            texture_uuid = uuid,
            texture_width = texture_width,
            texture_height = texture_height
        )

    icons_str = ""
    for icon in icons:
        icons_str += icon.to_xml()

    xml_str = create_atlas_output(icons_str, icon_size[0], icon_size[1], 
        texture_output.relative_to(root_data_dir), atlas_uuid, texture_size[0], texture_size[1])

    common.log(script_name, f"Saving atlas to '{atlas_output}'.")

    f = open(atlas_output, "w")
    f.write(xml_str)

    texture_image = Image.new('RGBA', texture_size, (0, 0, 0, 0))

    for icon in icons:
        common.log(script_name, f"** Pasting '{icon.name}'.", False)
        #texture_image.paste(icon.image, icon.pos, mask=0)
        texture_image.alpha_composite(icon.image, icon.pos)

    common.log(script_name, f"Saving temp png texture to '{temp_texture_png}'.")
    texture_image.save(temp_texture_png)
    common.log(script_name, f"Converting texture to dds at '{texture_output}'.")

    command = f"texconv -m {0 if do_mipmaps == True else 1} -ft dds -f {dds_format} -nologo -timing -y -o \"{texture_output.parent}\" \"{temp_texture_png.absolute()}\""
    common.log(script_name, f"Running command '{command}'.")
    p = subprocess.run(command,
        shell=True,
        universal_newlines=True,
        stdout=subprocess.PIPE, 
        stderr=subprocess.PIPE)
    #common.log(script_name, f"{p.args}")
    common.log(script_name, p.stdout)
    common.log(script_name, p.stderr)
    if p.returncode == 0:
        send2trash.send2trash(str(temp_texture_png.absolute()).replace("/", "\\"))
        return True
print("Created atlas in {} seconds for {} icons.".format(timeit.timeit(run, number=1), totalIcons))