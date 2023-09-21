import os
from pathlib import Path
import lxml.etree as ET
import argparse
from types import SimpleNamespace
from dataclasses import dataclass,field
import re

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

animation_keys:dict[str,int] = {}

def increment_key(key:str):
    current = animation_keys.get(key, 0)
    animation_keys[key] = current + 1

class AttributeMap(SimpleNamespace):
    def __init__(self, dictionary, default_empty:str = "", **kwargs):
        self.default_empty = default_empty
        super().__init__(**kwargs)
        for key, value in dictionary.items():
            if isinstance(value, dict):
                self.__setattr__(key, AttributeMap(value))
            else:
                self.__setattr__(key, value)

    def __getattribute__(self, value):
        try:
            return super().__getattribute__(value)
        except AttributeError:
            return self.default_empty

@dataclass
class AnimationResource:
    name:str
    uuid:str
    filepath:str
    
    def update(self, other):
        if self.uuid == "" and other.uuid != "":
            self.uuid = other.uuid
        if self.name == "" and other.name != "":
            self.name = other.name
        if self.filepath == "" and other.filepath != "":
            self.filepath = other.filepath

empty_resource = AnimationResource("None", "None", "None")
                                   
animation_resources:dict[str,AnimationResource] = {}

class AnimationSetEntry:
    def __init__(self, key_uuid:str, resource_uuid:str = "") -> None:
        self.key_uuid = key_uuid
        self.resource_uuid = resource_uuid or ""

    def get_resource_name(self)->str:
        resource = animation_resources.get(self.resource_uuid, empty_resource)
        return resource.name
    
    def __str__(self) -> str:
        resource = animation_resources.get(self.resource_uuid, empty_resource)
        return f"{self.key_uuid}\t{resource.name}\t{resource.uuid}\t{resource.filepath}"

@dataclass
class AnimationSubSet:
    fallbacksubset:str
    uuid:str
    animations:list[AnimationSetEntry] = field(default_factory=list)
    total:int = 0
    
    def __str__(self) -> str:
        if self.uuid == "":
            self.uuid = "None"
        sorted_animations = [f"{self.uuid}\t{str(x)}" for x in sorted(self.animations, key=lambda a: (a.key_uuid, a.get_resource_name()))]
        return "\n".join(sorted_animations)
    
@dataclass
class AnimationSet:
    name:str
    uuid:str
    subsets:list[AnimationSubSet]  = field(default_factory=list)
    base_name:str = ""
    total:int = 0
    
    def update(self, other):
        if self.uuid == "" and other.uuid != "":
            self.uuid = other.uuid
        if self.name == "" and other.name != "":
            self.name = other.name

def find_animation(key:str, anim_set:AnimationSet):
    for subset in anim_set.subsets:
        for anim in subset.animations:
            if anim.key_uuid == key:
                return anim
    for x in animation_sets.values():
        for subset in x.subsets:
            for anim in subset.animations:
                if anim.key_uuid == key:
                    return anim

@dataclass
class SpellAnimation:
    spell:str
    animations:list[str]
    uuid_text:str
    
    def get_translated(self, set_uuid:str = "da29fce1-056a-4f86-b110-d61679c21238"):
        names = []
        anim_set = animation_sets.get(set_uuid)
        for anim in self.animations:
            res = find_animation(anim, anim_set)
            if res:
                names.append(res.get_resource_name())
        return names
    def __str__(self):
        names = self.get_translated()
        if names and len(names) > 0:
            names = f"{';'.join(names)}"
        else:
            names = "UNKNOWN"
        return f"{self.spell}\t{names}\t{self.uuid_text}"

animation_sets:dict[str,AnimationSet] = {}
spell_animations:dict[str,SpellAnimation] = {}

node_animation_set_path = "region[@id='AnimationSetBank']/node[@id='AnimationSetBank']/children/node[@id='Resource']"
node_animation_subset_path = ".//node[@id='AnimationSubSets']/children/node[@id='Object']"
node_animation_set_entry_path = ".//node[@id='Animation']/children/node[@id='Object']"
node_animation_resource = "//node[@id='AnimationBank']/children/node[@id='Resource']"

NULL_GUID = "00000000-0000-0000-0000-000000000000"

tsv_header = "Subset\tKey\tName\tResource\tFilePath\t\n"

set_folder_names = [
    "ELF_F",
    "ELF_M",
    "GTY_F",
    "GTY_M",
    "HUM_F",
    "HUM_M",
    "DGB_F",
    "DGB_M",
    "DWR_F",
    "DWR_M",
    "HEL_F",
    "HEL_M",
    "HFL_F",
    "HFL_M",
    "GNO_F",
    "GNO_M",
    "TIF_F",
    "TIF_M",
    "AUTOMN",
    "BADGER",
    "BEAR",
    "BIRD",
    "BLD",
    "BOAR",
    "BOOK",
    "BUGBEAR",
    "BULETTE",
    "CAMBIAN",
    "CAMBION",
    "CAT",
    "CHD",
    "CHICKEN",
    "CONT",
    "CRAB",
    "DEC",
    "DEEP",
    "DOG",
    "DOOR",
    "DRAGON",
    "ELEM",
    "ETTER",
    "EYE",
    "FLOCK",
    "FLUMPH",
    "FROG",
    "FUR",
    "GNOLL",
    "GOB_F",
    "GOB_M",
    "GOLEM",
    "HAG",
    "HAND",
    "HARPY",
    "HOB_M",
    "HOOK",
    "HRC",
    "HYENA",
    "IMP",
    "INTDEV",
    "KUOTOA",
    "MEPHIT",
    "MFL",
    "MINOTAUR",
    "MRRGN",
    "MYC",
    "OGRE",
    "OOZE",
    "OWLBEAR",
    "OX",
    "PIG",
    "PUZ",
    "Pig",
    "QST",
    "QUEST",
    "RABBIT",
    "RAT",
    "REDCAP",
    "REF",
    "S_GOBLINPRIESTESS",
    "SHEEP",
    "SKEL",
    "SNAKE",
    "SPHERE",
    "SPIDER",
    "SQUIRREL",
    "TADPOLE",
    "VISTA",
    "VMP",
    "WISP",
    "WOLF",
    "WOOD",
    "WORG",
    "WPN",
    "WRWOLF",
    "ZOM",
]

def get_attributes(node:ET._Element, fallback:str = "")->AttributeMap:
    d = {}
    for attr in node.iterchildren("attribute"):
        attr_id = attr.get("id", None)
        if attr_id is not None:
            d[attr_id] = attr.get("value", fallback)
    return AttributeMap(d, fallback)

def get_set_folder(name:str):
    match_name = name.upper()
    for x in set_folder_names:
        if x in match_name:
            return x
    return "MISC"

def get_mod_folder(f:Path):
        parent = f.parent
        while parent != None:
            if parent.parent.name == "Public":
                return parent
            parent = parent.parent
        return None

def add_or_update(dictionary:dict, key, obj):
    existing = dictionary.get(key, None)
    if existing == None:
        dictionary[key] = obj
        return obj
    else:
        existing.update(obj)
        return existing
    
def gather_animation_resources(meta_xml:ET._Element, f_path:Path):
    #print(f"{f_path.parent.parent.name}/{f_path.parent.name}/{f_path.name}")
    #print(f"Gathering resources from {f_path}")
    node_resource:ET._Element
    for node_resource in meta_xml.iterfind(node_animation_resource, None):
        res_attributes = get_attributes(node_resource)
        if res_attributes.ID != NULL_GUID and res_attributes.ID != "":
            res = add_or_update(animation_resources, res_attributes.ID, AnimationResource(res_attributes.Name, res_attributes.ID, res_attributes.SourceFile))

def run(f_path:Path, preserve_empty:bool=True):
    #mod_folder = get_mod_folder(f_path)
    #output_dir = output_dir.joinpath(mod_folder.name)
    with f_path.open("rb") as f:
        #print(f"Parsing {f.name}")
        meta_xml:ET._Element = ET.parse(f)
        #for node in meta_xml.iterfind("./region/node/children/node[@id='Resource']/attribute", None):
        gather_animation_resources(meta_xml, f_path)
        
        node_animation_set:ET._Element
        for node_animation_set in meta_xml.iterfind(node_animation_set_path, None):
            parent_attributes = get_attributes(node_animation_set)
            subsets:list[AnimationSubSet] = []
            set_name = parent_attributes.Name
            base_name = get_set_folder(set_name)
            anim_set = add_or_update(animation_sets, parent_attributes.ID, AnimationSet(parent_attributes.Name, parent_attributes.ID, subsets, base_name))
            
            parent_node_entry:ET._Element
            for parent_node_entry in node_animation_set.iterfind(node_animation_subset_path, None):
                set_attributes = get_attributes(parent_node_entry, "None")
                animations:list[AnimationSetEntry] = []
                subset = AnimationSubSet(set_attributes.FallBackSubSet, set_attributes.MapKey, animations)
                total = 0
                node_entry:ET._Element
                for node_entry in parent_node_entry.iterfind(node_animation_set_entry_path, None):
                    attributes = get_attributes(node_entry)
                    increment_key(attributes.MapKey)
                    anim = AnimationSetEntry(attributes.MapKey, attributes.ID)
                    animations.append(anim)
                    total = total + 1
                subset.total = total
                subsets.append(subset)
            anim_set.total = len(subsets)
    #print(f"Finished processing {f_path}")

def finalize(output_dir:Path, write_stats:bool = False):
    common_keys = sorted([k for k,v in animation_keys.items() if v > 1])
    print(f"{len(common_keys)} animation keys.")
    output_dir.joinpath("AnimationKeys").with_suffix(".txt").write_text("\n".join(common_keys))
    
    print(f"{len(animation_sets.values())} animation sets parsed.")
    for set in animation_sets.values():
        if set.total > 0:
            lines = []
            output_txt = tsv_header
            output_file = output_dir.joinpath(f"{set.name}_{set.uuid}").with_suffix(".tsv")
            if set.base_name != "":
                output_file = output_dir.joinpath(set.base_name).joinpath(f"{set.name}_{set.uuid}").with_suffix(".tsv")
            for subset in sorted(set.subsets, key=lambda a: a.uuid):
                if subset.total > 0:
                    lines.append(str(subset))
            output_file.parent.mkdir(parents=True, exist_ok=True)
            output_file.write_text(output_txt + "\n".join(lines), encoding="utf-8")
            
    if write_stats:
        text = "ID\tAnimations\tKeys\n" + "\n".join([str(x) for x in sorted(spell_animations.values(), key=lambda entry: entry.spell)])
        output_dir.joinpath("SpellAnimations").with_suffix(".tsv").write_text(text)

entry_pattern = re.compile("new entry \"([^\"]+)\"", re.IGNORECASE)
spell_anim_pattern = re.compile("data \"SpellAnimation\" \"([^\"]+)\"", re.IGNORECASE)
using_pattern = re.compile("using \"([^\"]+)\"", re.IGNORECASE)

inherited_entries:dict[str,str] = {}

def get_parent_anims(current):
    parent = spell_animations.get(current)
    if parent != None:
        parent_anims = spell_animations.get(parent)
        if parent_anims != None:
            return parent_anims
        else:
            next_parent = inherited_entries.get(parent)
            return get_parent_anims(next_parent)

def cleanup_inheritance():
    for spell,parent in inherited_entries.items():
        if spell_animations.get(spell) == None:
            parent_anims = get_parent_anims(spell)
            if parent_anims != None:
                spell_animations[spell] = SpellAnimation(spell, parent_anims.animations, parent_anims.uuid_text)

def translate_stats_file(f:Path):
    with f.open("r") as data:
        lines = data.readlines()
        spell = ""
        for line in lines:
            if id_match := entry_pattern.match(line):
                spell = id_match.group(1)
            elif using := using_pattern.match(line):
                inherited_entries[spell] = using.group(1)
            elif anims_match := spell_anim_pattern.match(line):
                if spell != "":
                    anims = []
                    uuid_text = anims_match.group(1)
                    for group in uuid_text.split(";"): anims.extend(group.split(","))
                    anims = [x for x in anims if x != ""]
                    if len(anims) > 0:
                        spell_animations[spell] = SpellAnimation(spell, anims, uuid_text)
                    else:
                        print(f"No animations for spell({spell})? ({uuid_text})")
                    spell = ""

def translate_stats_dir(directory:Path):
    for x in directory.glob("Spell_*.txt"):
        translate_stats_file(x)
    cleanup_inheritance()
    
if __name__ == "__main__":
    default_output_path = Path(script_dir.joinpath("output\\animation_sets\\"))
    #default_animations_path = Path("G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/_merged.lsx")
    #default_animations_path = Path("G:/Modding/BG3/_Extracted/Public/SharedDev/Content/Assets/_merged.lsx")
    #default_animations_path = Path("G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/Characters/Githyanki/_merged.lsx")
    default_directories = "G:/Modding/BG3/_Extracted/Public/Shared/Content;G:/Modding/BG3/_Extracted/Public/SharedDev/Content;G:/Modding/BG3/_Extracted/Public/Gustav/Content;G:/Modding/BG3/_Extracted/Public/GustavDev/Content"
    #default_directories = "G:\Modding\BG3\_Extracted\Public\Shared\Content"
    
    ## cli args here
    parser = argparse.ArgumentParser()
    parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")
    parser.add_argument("-d", "--directories", type=str, default=default_directories, help="Folders to parse lsx files for recursively")
    parser.add_argument("--noempty", action='store_true')
    parser.add_argument("--nostats", action='store_true', help="Skip parsing stats folders to translate the SpellAnimation text.")

    parser.description = "Extract animation data from a path."
    new_line = "\n    "
    parser.usage = f"""
    Example usage:
    python extract_animations.py -d "G:/Modding/BG3/_Extracted/Public/Shared/Content;G:/Modding/BG3/_Extracted/Public/SharedDev"
    """

    args = parser.parse_args()
    
    preserve_empty = args.noempty != True
    parse_stats = args.nostats != True

    directories_str:str = args.directories
    directories:list[Path] = []
    if ";" in directories_str:
        directories = [Path(x) for x in directories_str.split(";")]
    else:
        directories.append(Path(directories_str))
    
    for root in directories:
        files = sorted([x for x in root.rglob("*.lsx")], key=lambda f: str(f.absolute()))
        print(f"Processing {len(files)} files in {root}")
        for f in files:
            run(f, preserve_empty)
        print(f"Finished processing {root}")
        if parse_stats:
            stats_dir = root.parent.joinpath("Stats/Generated/Data")
            if stats_dir.exists:
                print(f"Translating SpellAnimations in {stats_dir}")
                translate_stats_dir(stats_dir)
            else:
                print(f"Stats directory not found at {stats_dir}")
    finalize(args.output, parse_stats)
    print(f"{len(animation_resources.keys())} resources parsed.")