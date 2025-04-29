# pyright: reportUnknownVariableType=false, reportUnknownArgumentType=false
# pyright: reportUnknownMemberType=false, reportUnknownParameterType=false
# pyright: reportMissingImports=false
# pyright: reportAny=false

import os
from pathlib import Path
import argparse

# External
from PIL import Image

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

default_divine_path = common.get_lslib_path()

xml_root_pattern = """<?xml version="1.0" encoding="utf-8"?>
<save>
    <version major="4" minor="7" revision="1" build="3" lslib_meta="v1,bswap_guids" />
    <region id="config">
        <node id="config">
            <children>
                <node id="entries">
                    <children>
{}
                    </children>
                </node>
            </children>
        </node>
    </region>
</save>"""

xml_node_pattern = """{indent}<node id="Object">
{indent}\t<attribute id="MapKey" type="FixedString" value="{file}" />
{indent}\t<children>
{indent}\t\t<node id="entries">
{indent}\t\t\t<attribute id="h" type="int16" value="{height}" />
{indent}\t\t\t<attribute id="mipcount" type="int8" value="{mipcount}" />
{indent}\t\t\t<attribute id="w" type="int16" value="{width}" />
{indent}\t\t</node>
{indent}\t</children>
{indent}</node>"""

entries:list[str] = []

indent = "\t" * 6

def main(assets_path:Path, output_path:Path, lslib_path:Path):
    if not common.import_lslib(lslib_path):
        print(f"Path to lslib is invalid: {lslib_path}")
        return False
    for file in assets_path.rglob("*.DDS"):
        image = Image.open(file)
        mipcount = 1
        width = image.width
        height = image.height
        relative_file = str(file.with_suffix(".png")).replace(f"{str(assets_path.parent)}\\", "").replace("\\", "/")
        node = xml_node_pattern.format(
            indent=indent,
            file=relative_file,
            width=width,
            height=height,
            mipcount=mipcount
        )
        entries.append(node)
    xml_tags = "\n".join(entries)
    xml_output = xml_root_pattern.format(xml_tags)

    lsx_backup = script_dir.joinpath("output/metadata.lsx")
    lsx_backup.parent.mkdir(exist_ok=True, parents=True)
    lsx_backup.write_text(xml_output, "utf-8")

    from System.IO import MemoryStream, StreamWriter
    from LSLib.LS import ResourceUtils, ResourceLoadParameters, ResourceConversionParameters
    from LSLib.LS.Enums import Game, ResourceFormat
    
    stream:MemoryStream = None
    writer:StreamWriter = None
    result = False
    try:
        stream = MemoryStream()
        writer = StreamWriter(stream)
        writer.Write(xml_output)
        writer.Flush()
        stream.Position = 0

        print(f"Saving {output_path}")
        output_path.parent.mkdir(parents=True, exist_ok=True)

        load_params = ResourceLoadParameters()
        load_params.ByteSwapGuids = False
        conversion_params = ResourceConversionParameters.FromGameVersion(Game.BaldursGate3)

        resource = ResourceUtils.LoadResource(stream, ResourceFormat.LSX, load_params)
        ResourceUtils.SaveResource(resource, str(output_path), ResourceFormat.LSF, conversion_params)
        result = True
    except Exception as ex:
        print("Error creating lsf:")
        print(ex)
    finally:
        if stream != None:
            stream.Dispose()
        if writer != None:
            writer.Dispose()
        return result

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Create a texture atlas from a folder of icons.')
    parser.add_argument("-i", "--input", type=Path, required=True, help='The directory of icons to process.')
    parser.add_argument("-o", "--output", type=Path, required=True, help='The output path of the metadata.lsf')
    parser.add_argument("--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
    parser.usage = f"""
    Example usage:
    python create_ui_metadata.py -i "C:/BG3/Data/Mods/MyModFolder/GUI/Assets" -o "C:/BG3/Data/Mods/MyModFolder/GUI/metadata.lsf"
    """

    args = parser.parse_args()
    
    main(args.input, args.output, args.divine)