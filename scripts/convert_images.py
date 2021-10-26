from pathlib import Path
from typing import List
import argparse
import wand.image
import re

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

parser = argparse.ArgumentParser(description='Batch convert image files')
parser.add_argument("-f", "--files", type=str, help='Selection of files to include, separated with ;')
parser.add_argument("-d", "--directory", type=str, help='The directory to process.')
parser.add_argument("-e", "--ext", nargs='+', help='If in directory mode, only include these file extensions in the playlist.')
parser.add_argument("-r", "--recursive", default=False, type=bool, help='If in directory mode, whether to recursively search directories.')
parser.add_argument("-o", "--outputformat", default=".png", type=str, help='The output format.')
parser.add_argument("-q", "--quality", default=100, type=int, help='Output quality.')
parser.add_argument("-s", "--size", default=None, type=int, help='Output square size.')
parser.add_argument("--append", default="", type=str, help='Append text to the output filename.')
parser.add_argument("--srgb", default=False, type=bool, help='Whether to enable SRGB.')
parser.add_argument("--ddscompression", default=None, type=str, help='If outputformat is ".dds", this is the compression to use. [dxt1, dxt3, dxt5]')
args = parser.parse_args()

alpha_pattern = re.compile(r"^.*_((\w\wa)|(nm))$", re.IGNORECASE | re.MULTILINE)

def name_has_alpha(name:str):
    if alpha_pattern.search(name):
        return True
    return False

def convert_image(f:Path):
    file_path = str(f.absolute())
    output_path = str(f.with_name(f"{f.stem}{args.append or ''}").with_suffix(args.outputformat))

    with wand.image.Image(filename=file_path) as img:
        img.format = str.replace(args.outputformat, ".", "")
        img.compression_quality = args.quality
        if args.size is not None:
            img.size = (args.size,args.size)
        match args.outputformat:
            case ".jpg" | ".jpeg":
                img.compression = 'jpeg'
            case ".dds":
                if args.ddscompression == None and name_has_alpha(f.stem):
                    img.compression = "dxt5"
                    img.alpha_channel = True
                else:
                    img.compression = args.ddscompression or "dxt1"
                    img.alpha_channel = args.ddscompression == "dxt5"
            case _:
                img.compression = "no"

        img.save(filename=output_path)
    
# def convert_image_pillow(f:Path):
#     from PIL import Image
#     output_format = str.replace(args.outputformat, ".", "").upper()
#     im = Image.open(f)
#     if args.outputformat == ".jpg" and im.mode in ("RGBA", "P"): im = im.convert("RGB")
#     if args.size is not None:
#         im.save(f.with_suffix(args.outputformat), quality=args.quality, format=output_format, sizes=[(args.size,args.size)])
#     else:
#         im.save(f.with_suffix(args.outputformat), quality=args.quality, format=output_format)

if args.files is not None:
    files:List[Path] = [Path(s) for s in args.files.split(";")]
    for f in files:
        convert_image(f)
    common.log(script_name, "[convert_images] All done.", True)
elif args.directory is not None:
    files:List[Path] = None
    dir_path = Path(args.directory)
    if args.ext is not None:
        anyFile = "*" in args.ext
        if args.recursive:
            files = [p for p in dir_path.rglob('*') if (anyFile or p.suffix in args.ext)]
        else:
            files = [p for p in dir_path.glob('*') if (anyFile or p.suffix in args.ext)]
    else:
        if args.recursive:
            files = [p for p in dir_path.rglob('*') if p.is_file()]
        else:
            files = [p for p in dir_path.glob('*') if p.is_file()]
    
    if files is not None and len(files) > 0:
        for f in files:
            convert_image(f)
        common.log(script_name, "[convert_images] All done.", True)
    else:
        common.log(script_name, "Failed to find any image files in directory. Skipping.", True)
else:
    common.log(script_name, "Failed to find any files. Skipping.", True)
    parser.print_help()