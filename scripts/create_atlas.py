# pyright: reportUnknownVariableType=false, reportUnknownArgumentType=false
# pyright: reportUnknownMemberType=false, reportUnknownParameterType=false
# pyright: reportMissingImports=false
# pyright: reportAny=false

import os
import subprocess
from dataclasses import dataclass
from pathlib import Path
import argparse
import timeit
from collections.abc import Sequence
import uuid

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
                    <attribute id="Height" type="int32" value="{icon_w}" />
                    <attribute id="Width" type="int32" value="{icon_h}" />
                </node>
                <node id="TextureAtlasPath">
                    <attribute id="Path" type="string" value="{texture_path}" />
                    <attribute id="UUID" type="FixedString" value="{texture_uuid}" />
                </node>
                <node id="TextureAtlasTextureSize">
                    <attribute id="Height" type="int32" value="{texture_width}" />
                    <attribute id="Width" type="int32" value="{texture_height}" />
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
    pos:Sequence[int]
    uv:UV
    image:Image.Image|None = None
    
    @property
    def name(self):
        return self.image_path.stem
    
    def __post_init__(self):
        self.image = Image.open(self.image_path).convert("RGBA")
    
    def to_xml(self):
        return """
                <node id="IconUV">
                    <attribute id="MapKey" value="{name}" type="FixedString" />
                    <attribute id="U1" type="float" value="{u1}" />
                    <attribute id="U2" type="float" value="{u2}" />
                    <attribute id="V1" type="float" value="{v1}" />
                    <attribute id="V2" type="float" value="{v2}" />
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

default_divine_path = common.get_lslib_path()

totalIcons = 0

texture_resource_template = """<?xml version="1.0" encoding="utf-8"?>
<save>
	<version major="4" minor="0" revision="9" build="0" />
	<region id="TextureBank">
		<node id="TextureBank">
			<children>
				<node id="Resource">
					<attribute id="ID" type="FixedString" value="{uuid}" />
					<attribute id="Localized" type="bool" value="False" />
					<attribute id="Name" type="LSString" value="{name}" />
					<attribute id="SRGB" type="bool" value="True" />
					<attribute id="SourceFile" type="LSString" value="{dds}" />
					<attribute id="Streaming" type="bool" value="True" />
					<attribute id="Template" type="FixedString" value="{name}" />
					<attribute id="Type" type="int32" value="0" />
				</node>
            </children>
		</node>
	</region>
</save>"""

def generate_texture_lsf(uuid:str, dds_path:Path, resource_path:Path, lslib_path:Path, resource_lsx_output:Path|None = None):
    if not common.import_lslib(lslib_path):
        print(f"Path to lslib is invalid: {lslib_path}")
        return False
    resource_path.parent.mkdir(exist_ok=True, parents=True)
    dds_path_str = str(dds_path)
    public_index = dds_path_str.index("Public")
    local_dds_path = dds_path_str[public_index:]
    texture_lsx = texture_resource_template.format(uuid=uuid, name=dds_path.name, dds=local_dds_path)
    
    if resource_lsx_output:
        resource_lsx_output.parent.mkdir(exist_ok=True, parents=True)
        resource_lsx_output.write_text(texture_lsx)
        print(f"Saved resource as an .lsx to {resource_lsx_output}")
    
    from LSLib.LS import ResourceUtils, ResourceConversionParameters # type: ignore 
    from LSLib.LS.Enums import Game, ResourceFormat # type: ignore 
    from System.IO import StreamWriter, MemoryStream # type: ignore 
    
    stream:MemoryStream = None
    writer:StreamWriter = None
    result = False
    try:
        stream = MemoryStream()
        writer = StreamWriter(stream)
        writer.Write(texture_lsx)
        writer.Flush()
        stream.Position = 0
        
        resource = ResourceUtils.LoadResource(stream, ResourceFormat.LSX)
        conversionParams = ResourceConversionParameters.FromGameVersion(Game.BaldursGate3)
        ResourceUtils.SaveResource(resource, str(resource_path.absolute()), ResourceFormat.LSF, conversionParams)
        print(f"Created {resource_path}")
        result = True
    finally:
        if stream != None:
            stream.Dispose()
        if writer != None:
            writer.Dispose()
        return result

def get_icons(icons_dir:Path, icon_size:tuple[int,int], texture_size:tuple[int,int])->list[Icon]:
    icons = []
    padding = (float(0.5/texture_size[0]), float(0.5/texture_size[1]))
    col_max = texture_size[0] / icon_size[0]
    row_max = texture_size[1] / icon_size[1]

    x = 0
    y = 0

    # For some reason, the editor appends the first two icons to the end
    icons_first = []
    images = get_images(icons_dir)
    for img in images:
        round_num = False
        truncate_u1 = 8
        truncate_u2 = 8
        truncate_v1 = 11
        truncate_v2 = 9

        # if x <= 1 and y == 0: 
        #     u1 = truncate(numpy.clip(float(((icon_size[0] * x) / texture_size[0]) + padding[0]), 0, 1.0), 9, round_num=True)
        #     u2 = truncate(numpy.clip(float(((icon_size[0] * (x + 1)) / texture_size[1]) - padding[1]), 0, 1.0), 8, round_num=False)
        #     v1 = truncate(numpy.clip(float(((icon_size[1] * y) / texture_size[0]) + padding[0]), 0, 1.0), 12, round_num=False)
        #     v2 = truncate(numpy.clip(float(((icon_size[1] * (y + 1)) / texture_size[1]) - padding[1]), 0, 1.0), 9, round_num=False)
        # else:
        u1 = truncate(numpy.clip(float(((icon_size[0] * x) / texture_size[0]) + padding[0]), 0, 1.0), truncate_u1, round_num)
        u2 = truncate(numpy.clip(float(((icon_size[0] * (x + 1)) / texture_size[1]) - padding[1]), 0, 1.0), truncate_u2, round_num)
        v1 = truncate(numpy.clip(float(((icon_size[1] * y) / texture_size[0]) + padding[0]), 0, 1.0), truncate_v1, round_num)
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
    return icons

def generate_texture(icons:list[Icon], texture_output:Path, texture_size:tuple[int,int], dds_format:str = "DXT5", do_mipmaps:bool=False):
    temp_texture_png = texture_output.with_suffix(".png")
    texture_image = Image.new('RGBA', texture_size, (0, 0, 0, 0))
    common.log(script_name, f"Merging {len(icons)} images.")
    for icon in icons:
        if icon.image != None:
            common.log(script_name, f"** Pasting '{icon.name}'.", False)
            #texture_image.paste(icon.image, icon.pos, mask=0)
            texture_image.alpha_composite(icon.image, icon.pos)

    common.log(script_name, f"Saving temp png texture to '{temp_texture_png}'.")
    texture_image.save(temp_texture_png)
    common.log(script_name, f"Converting texture to dds at '{texture_output}'.")

    # -m 1 disables mimaps
    command = f"texconv -m {12 if do_mipmaps else 1} -ft DDS -f {dds_format} -nologo -timing -y -o \"{texture_output.parent}\" \"{temp_texture_png.absolute()}\""
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

def generate_atlas_lsx(icons:list[Icon], atlas_output:Path, texture_output:Path, atlas_uuid:str|None, icon_size:tuple[int,int], texture_size:tuple[int,int]):
    if atlas_uuid is None or atlas_uuid == "":
        atlas_uuid = str(uuid.uuid4())

    atlas_output = atlas_output.with_suffix(".lsx")
    texture_output = texture_output.with_suffix(".dds")
    root_data_dir = atlas_output.parent.parent.parent

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
    
    atlas_output.parent.mkdir(exist_ok=True, parents=True)
    texture_output.parent.mkdir(exist_ok=True, parents=True)

    xml_str = create_atlas_output(icons_str, icon_size[0], icon_size[1], 
        texture_output.relative_to(root_data_dir), atlas_uuid, texture_size[0], texture_size[1])

    common.log(script_name, f"Saving atlas to '{atlas_output}'.")

    f = open(atlas_output, "w")
    f.write(xml_str)

if __name__ == "__main__":
    default_atlas_path = script_dir.joinpath("output\\atlas\\Atlas.lsx")
    default_texture_path = script_dir.joinpath("output\\atlas\\Texture.dds")
    parser = argparse.ArgumentParser(description='Create a texture atlas from a folder of icons.')
    parser.add_argument("-i", "--icons", type=Path, required=True, help='The directory of icons to process.')
    parser.add_argument("-a", "--atlas", type=Path, default=default_atlas_path, help='The path of the atlas file to create, such as Public/ModName_UUID/GUI/MyAtlas.lsx.')
    parser.add_argument("-t", "--texture", type=Path, default=default_texture_path, help='The path of the texture to create.')
    parser.add_argument("-u", "--uuid", type=str, default="", help='The UUID to use for the atlas (defaults to a new UUID4).')
    parser.add_argument("-m", "--mipmaps", action='store_true', help='Generate mipmaps (default False).')
    parser.add_argument("-f", "--ddsformat", type=str, default="DXT5", help='The dds format to use (DXT1, DXT5 etc). Defaults to DXT5 (BC3_UNORM).')
    parser.add_argument("-r", "--resource", type=Path, help='The path to content texture resource lsf to generate (optional). This requires --divine to be set, or a LSLIB_PATH environment variable to be set.')
    parser.add_argument("--resourcelsx", type=Path, help='Optional path to output the content resource to, in lsx format.')
    parser.add_argument("--ddstool", type=Path, help='The path to the "DirectXTex texture processing library" (directory where texconv is).')
    parser.add_argument("--iconsize", type=int, default=(64,64), nargs="+", help='The icon width/height/.')
    parser.add_argument("--texturesize", type=int, default=(2048,2048), nargs="+", help='The texture width/height/.')
    parser.add_argument("--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
    parser.usage = f"""
    Example usage:
    python create_atlas.py -i "G:/Modding/BG3/Mods/MyMod/Icons" -a "C:/BG3/Data/Public/MyModFolder/GUI/MyMod_Icons.lsx" -u 6bae909c-1736-48e7-ae19-314b3aa7b1f5 -t "C:/BG3/Data/Public/MyModFolder/Assets/Textures/Icons/MyMod_Icons.dds" --ddstool "C:/Portable/DirectXTex" --texturesize 1024 1024
    """
    def run_cmd():
        args = parser.parse_args()
        lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")
        icons_dir:Path = args.icons
        atlas_output:Path = args.atlas
        texture_output:Path = args.texture
        resource_output:Path = args.resource
        resource_lsx_output:Path = args.resourcelsx
        atlas_uuid:str = args.uuid
        dds_format:str = args.ddsformat
        icon_size:tuple[int,int] = args.iconsize
        texture_size:tuple[int,int] = args.texturesize
        do_mipmaps:bool = args.mipmaps

        if atlas_output == default_atlas_path:
            atlas_output = default_atlas_path.parent.joinpath(icons_dir.name + ".lsx")

        if texture_output == default_texture_path:
            texture_output = default_texture_path.parent.joinpath(icons_dir.name + ".dds")

        icons = get_icons(icons_dir, icon_size, texture_size)
        global totalIcons
        totalIcons = len(icons)
        if totalIcons > 0:
            generate_atlas_lsx(icons, atlas_output, texture_output, atlas_uuid, icon_size, texture_size)
            generate_texture(icons, texture_output, texture_size, dds_format, do_mipmaps)
        if resource_output:
            generate_texture_lsf(atlas_uuid, texture_output, resource_output, lslib_dll, resource_lsx_output)
        
    print("Created atlas in {} seconds for {} icons.".format(timeit.timeit(run_cmd, number=1), totalIcons))