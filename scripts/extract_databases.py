import os
from pathlib import Path
import argparse

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

default_output_path = Path(script_dir.joinpath("output\\osiris\\"))

default_divine_path = Path(os.environ.get("LSLIB_PATH", None))

## cli args here
parser = argparse.ArgumentParser()
parser.add_argument("-d", "--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")
parser.add_argument("-f", "--file", type=Path, required=True, help="The path to a save file.")

parser.description = "Extract Osiris databases from a save file using lslib."
new_line = "\n    "
parser.usage = f"""
Example usage:
python extract_osiris.py -d "C:/lslib/divine.exe" -o "C:/Modding/BG3/OsirisInfo" -f "%%LOCALAPPDATA%%/Larian Studios/Baldur's Gate 3/PlayerProfiles/Public/Savegames/Story/Tav-24112318724__Quicksave1/Quicksave1.lsv"
"""

args = parser.parse_args()

target_file:Path = args.file

fact_type_to_output_type = {
# 0:	UNKNOWN,
1:	"number",
2:	"number",
3:	"number",
4:	"string",
5:	"string",
6:	"string",
7:	"string",
8:	"string",
9:	"string",
# 10:	LEVELTEMPLATE,
# 11:	DIALOGRESOURCE,
# 12:	EFFECTRESOURCE,
# 13:	VOICEBARKRESOURCE,
# 14:	ANIMATION,
15:	"string",
16:	"string",
17:	"string",
# 18:	TIMELINERESOURCE,
# 19:	ROOT,
# 20:	CHARACTERROOT,
# 21:	ITEMROOT,
# 22:	PLATFORM,
# 23:	DISTURBANCEPROPERTY,
# 24:	SHAPESHIFTRULE,
# 25:	DIFFICULTYCLASS,
# 26:	DEATHTYPE,
# 27:	GRAVITYTYPE,
# 28:	GOLDREWARD,
# 29:	LQUANT,
# 30:	TUTORIALEVENT,
# 31:	TAGCATEGORY,
# 32:	DLC,
# 33:	RULESETMODIFIER,
# 34:	ARMOURSET,
# 35:	CROWDBEHAVIOUR,
# 36:	SPLATTERTYPE,
# 37:	QUANTITY,
# 38:	TRADABLETYPE,
# 39:	UNIFIEDTUTORIAL,
# 40:	EQUIPMENTSLOT,
# 41:	UNSHEATHSTATE,
# 42:	CRITICALITYTYPE,
# 43:	TRADEMODE,
}

if target_file.exists():
    lslib_dll:Path = args.divine.is_dir() and args.divine.joinpath("LSLib.dll") or args.divine.parent.joinpath("LSLib.dll")

    if lslib_dll.exists():
        output_dir:Path = args.output
        output_dir.mkdir(exist_ok=True, parents=True)
        
        import clr
        from System.Reflection import Assembly # type: ignore 
        Assembly.LoadFrom(str(lslib_dll.absolute()))
        clr.AddReference("LSLib") # type: ignore 
        clr.AddReference("System") # type: ignore 

        input_file:Path = args.file

        from LSLib.LS import PackageReader, Package, AbstractFileInfo, LSFReader # type: ignore 
        from LSLib.LS.Story import StoryDebugExportVisitor, StoryReader, Value # type: ignore 
        from System.IO import FileStream, MemoryStream, FileMode, FileAccess, FileShare # type: ignore 
        from System import Byte, Array # type: ignore 
        from System.Text import Encoding # type: ignore 
        
        def value_to_str(story, value):
            builtinTypeId = story.FindBuiltinTypeId(value.TypeId)
            output_type = fact_type_to_output_type.get(builtinTypeId, None)
            if output_type == "string":
                return f'"{value}"'
            return str(value)
                
        def load_story(stream):
            reader = StoryReader()
            story = reader.Read(stream)
            entries = []
            for db in story.Databases.Values:
                owner = db.OwnerNode
                if owner != None and len(owner.Name) > 0:
                    #name = len(owner.Name) > 0 and f"{owner.Name}" or f"<{owner.TypeName()}>"
                
                    for fact in db.Facts:
                       
                        fact_data = [value_to_str(story, x) for x in fact.Columns]
                        fact_str = ", ".join(fact_data)
                        entries.append(f"{owner.Name}({fact_str})")
            output_file = output_dir.joinpath("DatabaseEntries.txt")
            output_file.write_text("\n".join(sorted(entries)))
            print(f"Saved database entries to {output_file}")
            
        if target_file.suffix == ".lsv":
            package_reader = PackageReader(str(target_file.absolute()))
            package = package_reader.Read()
            story_bin = None
            for p in package.Files:
                if str.lower(p.Name) == "storysave.bin":
                    story_bin = p
                    break
            if story_bin is None:
                raise Exception("Failed to find storysave.bin in save file.")
            res_stream = story_bin.MakeStream()
            try:
                load_story(res_stream)
            finally:
                story_bin.ReleaseStream()
    else:
        raise FileNotFoundError("Failed to find LSLib.dll in the provided divine path.")
else:
    raise FileNotFoundError("A valid path to a save, story.div.osi, or debug.json (ConverterApp debug export) file is required.")