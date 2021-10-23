from pathlib import Path
from typing import List, Dict, TypeVar 
import argparse
import asyncio
import datetime
import os

from dataclasses import dataclass, field

PakType = TypeVar("PakType", bound="Pak")

all_groups:Dict[str,int] = {}

def default_pak_groups():
    return ["All"]

@dataclass
class Pak:
    name:str
    full_path:Path = None
    groups:List[str] = field(default_factory=default_pak_groups)

    def with_groups(self, *args:List[str])->PakType:
        global all_groups
        for arg in args:
            if not all_groups.get(arg):
                all_groups[arg] = 0
            all_groups[arg] = all_groups[arg] + 1
            self.groups.append(arg)
        return self

class GameData:
    data_paks = [
        Pak("Assets.pak").with_groups("Assets"),
        Pak("Effects.pak").with_groups("Assets"),
        Pak("Engine.pak").with_groups("Core"),
        Pak("EngineShaders.pak").with_groups("Assets"),
        Pak("Game.pak").with_groups("Core"),
        Pak("GamePlatform.pak").with_groups("Assets", "Test"),
        Pak("Icons.pak").with_groups("Assets"),
        Pak("LowTex.pak").with_groups("Assets", "Textures"),
        Pak("Materials.pak").with_groups("Assets"),
        Pak("Minimaps.pak").with_groups("Assets"),
        Pak("Models.pak").with_groups("Assets", "Large"),
        Pak("SharedSoundBanks.pak").with_groups("Assets"),
        Pak("SharedSounds.pak").with_groups("Assets", "Large"),
        Pak("Textures.pak").with_groups("Assets", "Textures", "Large"),
        Pak("VirtualTextures.pak").with_groups("Assets", "Textures", "Large"),
        Pak("Localization\English_Animations.pak").with_groups("Localization", "Assets", "Large"),
        Pak("Localization\Voice.pak").with_groups("Localization", "Assets", "Large"),
        Pak("Shared.pak").with_groups("Core"),
        Pak("Gustav.pak").with_groups("Core"),
        Pak("Gustav_Textures.pak").with_groups("Assets", "Textures"),
        Pak("Gustav_Video.pak").with_groups("Assets", "Large"),
        Pak("Patch6_HF1.pak").with_groups("Core", "Patch"),
        Pak("Patch6_HF1Video.pak").with_groups("Assets"),
        Pak("Localization\English.pak").with_groups("Localization"),
    ]

    @staticmethod
    async def extract_pak(f:Path, divine:Path, output:Path):
        targs = [
            str(divine.absolute()),
            "-g bg3",
            f'-s "{f.absolute()}"',
            "-a extract-package",
            f'-d "{output.absolute()}"',
            "-i pak"
        ]
        cmd = " ".join(targs)
        proc = await asyncio.create_subprocess_shell(
            cmd,
            universal_newlines=False,
            stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.PIPE)

        stdout, stderr = await proc.communicate()

        print(f'[divine] exited with {proc.returncode}]')
        encoding = "ISO-8859-1"
        if stdout:
            print(f'[divine]\n{stdout.decode(encoding)}')
        if stderr:
            print(f'[divine]\n{stderr.decode(encoding)}')
        
        return proc.returncode == 0

    @staticmethod
    def get_targets(data_dir:Path, target_groups:List[str], ignore_groups:List[str])->List[PakType]:
        targets = []

        for pak in GameData.data_paks:
            pak.full_path = data_dir.joinpath(pak.name)
            for g in pak.groups:
                if g in target_groups and not g in ignore_groups and pak.full_path.exists():
                    targets.append(pak)
                    #print(f"Match: {pak.name} | {g} | {pak.groups}")
                    break
        
        return targets

all_groups["All"] = len(GameData.data_paks)

working_dir = Path.cwd()

default_data_path = os.environ.get("BG3_PATH", None)
default_divine_path = os.environ.get("LSLIB_PATH", None)

if default_data_path:
    default_data_path = Path(default_data_path).joinpath("/Data")

if default_divine_path:
    default_divine_path = Path(default_divine_path).joinpath("divine.exe")

default_extract_path = working_dir.joinpath("/GameData_Extracted_{}".format(datetime.datetime.now().timestamp()))

async def run():
    parser = argparse.ArgumentParser(description="Extract all BG3 game data paks in order to one folder, or individual folders.")
    parser.add_argument("-i", "--input", default=default_data_path, type=Path, help="The Baldur's Gate 3 Data directory.", required=True)
    parser.add_argument("-d", "--divine", default=default_divine_path, type=Path, help="The path to divine.exe.")
    parser.add_argument("-o", "--output", type=Path, default=default_extract_path, help="The output directory.")
    parser.add_argument("-g", "--groups", type=str, default="Core", help=f"Groups to include, separated with ;. Groups: {';'.join(sorted(all_groups.keys()))}")
    parser.add_argument("-n", "--ignore", type=str, default="Large", help=f"Groups to ignore, separated with ;. Groups: {';'.join(sorted(all_groups.keys()))}")
    parser.add_argument("-s", "--separate", action='store_true', help="If true, paks will be extracted into separate directories in the output directory, using the pak's name.")
    args = parser.parse_args()

    if args.input is not None and args.output is not None and args.divine is not None:
        data_dir:Path = args.input
        output_dir:Path = args.output
        divine_path:Path = args.divine
        target_groups = str.split(args.groups, ";")
        ignore_groups = str.split(args.ignore, ";")

        if len(target_groups) == 0:
            parser.print_help()
            os.error("No pak groups specified.")
            return False

        if divine_path.is_dir():
            divine_path = divine_path.parent.joinpath("divine.exe")
            if not divine_path.exists():
                parser.print_help()
                os.error("Path to divine.exe is not set.")
                return False

        if not output_dir.exists():
            output_dir.mkdir(parents=True, exist_ok=True)
        print(f"Extracting game data to {output_dir}")
        successes = 0
        errors = 0

        pak_targets = GameData.get_targets(data_dir, target_groups, ignore_groups)
        if len(pak_targets) == 0:
            os.error("No paks matched group settings, or no paks were found.")
            return False

        async def process_pak(pak:PakType):
            nonlocal successes, errors, divine_path, output_dir, args
            pak_output = Path(output_dir)
            if args.separate:
                pak_output = pak_output.joinpath(pak.full_path.stem)
            if await GameData.extract_pak(pak.full_path, divine_path, pak_output):
                successes = successes + 1
            else:
                errors = errors + 1

        tasks = [process_pak(pak) for pak in pak_targets]
        await asyncio.gather(*tasks)
        total = successes + errors
        print(f"Processed {total} paks. Successes({successes}) Errors({errors})")
    else:
        parser.print_help()
    
def main():
    asyncio.run(run())
    
if __name__ == "__main__":
    main()