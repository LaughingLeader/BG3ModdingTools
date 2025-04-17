import os
import argparse


class Folder:
    def __init__(self, name):
        self.name = name
        self.dir = None

    def __enter__(self):
        self.dir = os.getcwd()
        new_dir = os.path.join(self.dir, self.name)
        os.makedirs(new_dir, exist_ok=True)
        os.chdir(new_dir)

    def __exit__(self, exc_type, exc_value, traceback):
        os.chdir(self.dir)


class File:
    def __init__(self, name):
        self.name = name
        self._lines = []
        self.indent = 0

    def __enter__(self):
        self._lines = []
        return self

    def clear(self):
        self._lines = []

    def __exit__(self, exc_type, exc_value, traceback):
        with open(self.name, 'w') as f:
            f.writelines(self._lines)

    def add_line(self, text: str):
        self._lines.append("\t" * self.indent + text)


class XMLFile(File):
    def __enter__(self):
        ret = super().__enter__()
        self.add_line('<?xml version="1.0" encoding="utf-8"?>')
        return ret


class XMLBlock:
    """Context manager for nesting XML blocks with proper indentation"""

    def __init__(self, file: File, node: str, inline=False, **kwargs):
        self.event = file
        self.node = node
        args = " ".join(f'{k}="{v}"' for k, v in kwargs.items())
        if inline:
            self.event.add_line(f"<{self.node} {args} />")
        else:
            self.event.add_line(f"<{self.node} {args}>")

    def __enter__(self):
        self.event.indent += 1

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.event.indent -= 1
        self.event.add_line(f"</{self.node}>")


def create_mod(name, author):
    with Folder(name):
        # only if there are models and textures
        # with Folder(f"Generated/Public/{name}"):
        with Folder("Localization/English"):
            with XMLFile(f"{name}.xml") as f:
                with XMLBlock(f, "contentList"):
                    pass
        with Folder(f"Public/{name}/RootTemplates"):
            with XMLFile("Merged.lsx") as f:
                f.add_line("""
<save>
    <version major="4" minor="0" revision="6" build="5" />
    <region id="Templates">
        <node id="Templates">
            <children>        
            </children>
        </node>
    </region>
</save>
                """)
        # touch this file
        with Folder(f"Public/{name}/Stats/Generated/Data"):
            with File("Armor.txt") as f:
                f.add_line(" ")
        with Folder(f"Mods/{name}"):
            with XMLFile("meta.lsx") as f:
                f.add_line(f"""
 <save>
  <version major="4" minor="0" revision="7" build="2" />
  <region id="Config">
    <node id="root">
        <children>
            <node id="Dependencies"/>
                <node id="ModuleInfo">
                    <attribute id="Author" type="LSWString" value="{author}"/> 
                    <attribute id="CharacterCreationLevelName" type="FixedString" value=""/>
                    <attribute id="Description" type="LSWString" value="{name}"/> 
                    <attribute id="Folder" type="LSWString" value="{name}"/> 
                    <attribute id="GMTemplate" type="FixedString" value=""/>
                    <attribute id="LobbyLevelName" type="FixedString" value=""/>
                    <attribute id="MD5" type="LSString" value=""/>
                    <attribute id="MainMenuBackgroundVideo" type="FixedString" value=""/>
                    <attribute id="MenuLevelName" type="FixedString" value=""/>
                    <attribute id="Name" type="FixedString" value="{name}"/>
                    <attribute id="NumPlayers" type="uint8" value="4"/>
                    <attribute id="PhotoBooth" type="FixedString" value=""/>
                    <attribute id="StartupLevelName" type="FixedString" value=""/>
                    <attribute id="Tags" type="LSWString" value=""/>
                    <attribute id="Type" type="FixedString" value="Add-on"/>
                    <attribute id="UUID" type="FixedString" value="GENERATE_AND_FILL"/> 
                    <attribute id="Version64" type="int64" value="36028797018963968"/>
                    <children>
                        <node id="PublishVersion">
                            <attribute id="Version64" type="int64" value="144115196665790673"/>
                        </node>
                        <node id="Scripts"/>
                        <node id="TargetModes">
                            <children>
                                <node id="Target">
                                    <attribute id="Object" type="FixedString" value="Story"/>
                                </node>
                            </children>
                        </node>
                    </children>
                </node>
            </children>
        </node>
    </region>
  </save>               
                """)


if __name__ == "__main__":
    # parse arguments with argparse
    parser = argparse.ArgumentParser(description="Initialize a new mod")
    parser.add_argument("name", help="Name of the mod")
    parser.add_argument("author", help="Author of the mod")

    args = parser.parse_args()
    create_mod(args.name, args.author)
