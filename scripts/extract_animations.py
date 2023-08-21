import os
from pathlib import Path
import lxml.etree as ET
import argparse
from types import SimpleNamespace
from dataclasses import dataclass,field

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

script_dir = Path(os.path.dirname(os.path.abspath(__file__)))
os.chdir(script_dir)

@dataclass
class AnimationResource:
    name:str
    uuid:str
    filepath:Path

    def __str__(self) -> str:
        #return f"{self.name}\t{self.uuid}\t{self.filepath}"
        return f"{self.name}\t{self.uuid}\t{self.filepath}"

empty_resource = AnimationResource("", "", "")

@dataclass
class AnimationSetEntry:
    key_uuid:str
    resource_uuid:str
    resource:AnimationResource = field(default_factory=lambda: empty_resource)

    def __str__(self) -> str:
        return f"{self.key_uuid}\t{self.resource}"
    
@dataclass
class AnimationSet:
    name:str
    uuid:str
    animations:dict[str,AnimationSetEntry] = field(default_factory=dict)
    total:int = 0

    def __str__(self) -> str:
        #return f"{self.name}\t{self.uuid}\t{self.filepath}"
        return f"[{self.name}] UUID({self.uuid})"

def run(f_path:Path, output_dir:Path):
    def get_mod_folder():
        parent = f_path.parent
        while parent != None:
            if parent.parent.name == "Public":
                return parent
            parent = parent.parent
        return None

    mod_folder = get_mod_folder()
    output_dir = output_dir.joinpath(mod_folder.name)
    output_dir.mkdir(exist_ok=True, parents=True)

    animation_sets:dict[str,AnimationSet] = {}
    animation_resources:dict[str,AnimationResource] = {}

    node_animation_set_path = "region[@id='AnimationSetBank']/node[@id='AnimationSetBank']/children/node[@id='Resource']"
    node_animation_set_entry_path = ".//node[@id='Animation']/children/node[@id='Object']"
    node_animation_resource = "region[@id='AnimationBank']/node[@id='AnimationBank']/children/node[@id='Resource']"
    attribute = "region[@id='AnimationBank']/node[@id='AnimationBank']/children/node[@id='Resource']"

    NULL_GUID = "00000000-0000-0000-0000-000000000000"

    def get_attributes(node:ET._Element)->SimpleNamespace:
        attributes = {}
        for attr in node.iterchildren("attribute"):
            attr_id = attr.get("id", None)
            if attr_id is not None:
                attributes[attr_id] = attr.get("value", "")
        return SimpleNamespace(**attributes)

    with f_path.open("rb") as f:
        print(f"Parsing {f.name}")
        meta_xml:ET._Element = ET.parse(f)
        #for node in meta_xml.iterfind("./region/node/children/node[@id='Resource']/attribute", None):
        print("Finding animation resources")
        resource:ET._Element
        for resource in meta_xml.iterfind(node_animation_resource, None):
            attributes = get_attributes(resource)
            animation_resources[attributes.ID] = AnimationResource(attributes.Name, attributes.ID, attributes.SourceFile)
        print(f"{len(animation_resources.keys())} resources parsed.")
        
        print("Finding animation sets / entries")
        node_animation_set:ET._Element
        for node_animation_set in meta_xml.iterfind(node_animation_set_path, None):
            parent_attributes = get_attributes(node_animation_set)
            animations:dict[str,AnimationSetEntry] = {}
            anim_set = AnimationSet(parent_attributes.Name, parent_attributes.ID, animations)
            animation_sets[anim_set.uuid] = anim_set
            node_animation_object:ET._Element
            total = 0
            for node_entry in node_animation_set.iterfind(node_animation_set_entry_path, None):
                resource = animation_resources.get(attributes.ID, None)
                attributes = get_attributes(node_entry)
                if resource != None and attributes.ID != NULL_GUID:
                    anim = AnimationSetEntry(attributes.MapKey, attributes.ID, resource)
                    animations[anim.key_uuid] = anim
                    total = total + 1
            anim_set.total = total

    print(f"{len(animation_sets.values())} sets parsed.")
    for set in animation_sets.values():
        if set.total > 0:
            output_file = output_dir.joinpath(set.name).with_suffix(".tsv")
            sorted_animations = [str(set.animations[k]) for k in sorted(set.animations.keys())]
            output_txt = "Key ID\tName\tResource ID\tFilePath\n"
            output_file.write_text(output_txt + "\n".join(sorted_animations), encoding="utf-8")
    print(f"Finished processing {f_path}")

if __name__ == "__main__":
    default_output_path = Path(script_dir.joinpath("output\\animations\\"))
    #default_animations_path = Path("G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/_merged.lsx")
    #default_animations_path = Path("G:/Modding/BG3/_Extracted/Public/SharedDev/Content/Assets/_merged.lsx")
    #default_animations_path = Path("G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/Characters/Githyanki/_merged.lsx")
    default_animations = "G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/_merged.lsx;G:/Modding/BG3/_Extracted/Public/SharedDev/Content/Assets/_merged.lsx;G:\Modding\BG3\_Extracted\Public\Gustav\Content\Assets\_merged.lsx;G:\Modding\BG3\_Extracted\Public\GustavDev\Content\Assets\_merged.lsx"

    ## cli args here
    parser = argparse.ArgumentParser()
    parser.add_argument("-o", "--output", type=Path, default=default_output_path, help="The output directory.")
    parser.add_argument("-f", "--files", type=str, default=default_animations, help="The path to the merged assets lsx, or multiple files separated with a semi-colon (;).")

    parser.description = "Extract animation data from a path."
    new_line = "\n    "
    parser.usage = f"""
    Example usage:
    python extract_animations.py -f "G:/Modding/BG3/_Extracted/Public/Shared/Content/Assets/_merged.lsx"
    """

    args = parser.parse_args()

    files_str:str = args.files
    files:Path = [files_str]
    if ";" in files_str:
        files = [Path(x) for x in files_str.split(";")]
    
    for f in files:
        run(f, args.output)