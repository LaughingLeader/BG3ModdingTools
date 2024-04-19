from pathlib import Path
import argparse
import asyncio
import os

from dataclasses import dataclass, field
from alive_progress import alive_bar

import common
script_name = Path(__file__).stem
common.clear_log(script_name)

all_groups:dict[str,int] = {}

working_dir = Path.cwd()

default_data_path = os.environ.get("BG3_PATH", None)
default_divine_path = common.get_lslib_path(True)
#default_extract_path = working_dir.joinpath("/GameData_Extracted_{}".format(datetime.datetime.now().timestamp()))
default_extract_path = os.environ.get("BG3_EXTRACTED", None)

if default_data_path:
    default_data_path = Path(default_data_path)
    if default_data_path.is_dir():
        if default_data_path.name != "Data":
            default_data_path = default_data_path.joinpath("Data")
    else:
        default_data_path = default_data_path.parent

if default_extract_path:
    default_extract_path = Path(default_extract_path)
    if not default_extract_path.is_dir():
        default_extract_path = default_extract_path.parent

def default_pak_groups()->list[str]:
    return ["All"]
@dataclass
class Pak:
    name:str
    full_path:Path = field(default_factory=lambda:Path())
    groups:list[str] = field(default_factory=default_pak_groups)

    def with_groups(self, *args:str):
        global all_groups
        for arg in args:
            if not all_groups.get(arg):
                all_groups[arg] = 0
            all_groups[arg] = all_groups[arg] + 1
            self.groups.append(arg)
        return self
class GameData:
    data_paks = [
        Pak("Assets").with_groups("Assets"),
        Pak("DiceSet01").with_groups("Assets", "Mods"),
        Pak("DiceSet02").with_groups("Assets", "Mods"),
        Pak("DiceSet03").with_groups("Assets", "Mods"),
        Pak("DiceSet06").with_groups("Assets", "Mods"),
        Pak("Effects").with_groups("Assets"),
        Pak("Engine").with_groups("Core"),
        Pak("EngineShaders").with_groups("Assets"),
        Pak("Game").with_groups("Core"),
        Pak("GamePlatform").with_groups("Assets", "Test"),
        Pak("Icons").with_groups("Assets"),
        Pak("LowTex").with_groups("Assets", "Textures"),
        Pak("Materials").with_groups("Assets"),
        Pak("Minimaps").with_groups("Assets"),
        Pak("Models").with_groups("Assets", "Large"),
        Pak("SharedSoundBanks").with_groups("Assets"),
        Pak("SharedSounds").with_groups("Assets", "Large"),
        Pak("Textures").with_groups("Assets", "Textures", "Large"),
        Pak("VirtualTextures").with_groups("Assets", "Textures", "Large"),
        Pak("Localization\English_Animations").with_groups("Localization", "Assets", "Large"),
        Pak("Localization\Voice").with_groups("Localization", "Assets", "Large"),
        Pak("Shared").with_groups("Core"),
        Pak("Gustav").with_groups("Core"),
        Pak("Gustav_Textures").with_groups("Assets", "Textures"),
        Pak("Gustav_NavCloud").with_groups("Assets"),
        Pak("Gustav_Video").with_groups("Assets", "Large"),
        Pak("Localization\English").with_groups("Localization", "Core"),
    ]
    
    @staticmethod
    def add_patches(data_dir:Path):
        for f in data_dir.glob("Patch*.pak"):
            GameData.data_paks.append(Pak(f.stem).with_groups("Core", "Patches"))

    @staticmethod
    async def extract_pak(f:Path, divine:Path, output:Path, debug:bool = False)->bool:
        targs = [
            f"{str(divine.absolute())}",
            "-g bg3",
            f'-s "{f.absolute()}"',
            "-a extract-package",
            f'-d "{output.absolute()}"',
            "-i pak"
        ]
        cmd = " ".join(targs)
        if debug:
            print(cmd)
            return True
        proc = await asyncio.create_subprocess_shell(
            cmd,
            universal_newlines=False,
            stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.PIPE)

        stdout, stderr = await proc.communicate()

        encoding = "ISO-8859-1"
        if stdout:
            common.log(script_name, f'[divine]\n{common.trim(stdout.decode(encoding))}')
        if stderr:
            common.log(script_name, f'[divine]\n{common.trim(stderr.decode(encoding))}')
        common.log(script_name, f'[divine] exited with code [{proc.returncode}]')
        
        return proc.returncode == 0

    @staticmethod
    def get_targets(data_dir:Path, target_groups:list[str], ignore_groups:list[str], specific_paks:list[str])->list[Pak]:
        targets = []

        for pak in GameData.data_paks:
            pak.full_path = data_dir.joinpath(pak.name).with_suffix(".pak")
            if pak.name in specific_paks:
                targets.append(pak)
            else:
                for g in pak.groups:
                    if g in target_groups and not g in ignore_groups and pak.full_path.exists():
                        targets.append(pak)
                        #print(f"Match: {pak.name} | {g} | {pak.groups}")
                        break
        
        return targets

all_groups["All"] = len(GameData.data_paks)

async def run():
    ## cli args here
    parser = argparse.ArgumentParser()
    parser.add_argument("-i", "--input", type=Path, default=default_data_path, help="The Baldur's Gate 3 Data directory.")
    parser.add_argument("-d", "--divine", type=Path, default=default_divine_path, help="The path to divine.exe.")
    parser.add_argument("-o", "--output", type=Path, default=default_extract_path, help="The output directory.")
    parser.add_argument("-s", "--specific", type=str, default="", help=f"Specific pak names to extract, separated with ;")
    parser.add_argument("-g", "--groups", type=str, default="None", help=f"Groups to limit extraction to, separated with ;. Defaults to None.")
    parser.add_argument("-n", "--ignore", type=str, default="Large", help=f"Groups to ignore, separated with ;. Defaults to Large.")
    parser.add_argument("--separate", action='store_true', help="If true, paks will be extracted into separate directories in the output directory, using the pak's name.")
    parser.add_argument("--configure", action='store_true', help="Store -i, -d, and -o as environmental variables %%BG3_PATH%%, %%LSLIB_PATH%%, and %%BG3_EXTRACTED%%.")
    parser.add_argument("--debug", action='store_true', help="Test the script without actually extracting anything.")

    parser.description = "Extract BG3 game data paks in order to one folder, or individual folders."
    new_line = "\n    "
    parser.usage = f"""
    Extracting core paks with -i and -d properties:
    python extract_game.py -g Core -o "C:\Modding\BG3_Extracted" -i "C:\Games\Steam\steamapps\common\Baldurs Gate 3\Data" -d "C:\Modding\BG3\ConverterApp\divine.exe"

    Setting environment variables so -i and -d can be omitted:
    ===
    python extract_game.py --configure -i "C:\Games\Steam\steamapps\common\Baldurs Gate 3" -d "C:\Modding\BG3\ConverterApp"
    ===
    This will set the %%BG3_PATH%% and %%LSLIB_PATH%% variables so -i and -d no longer need to be specified.

    Extracting core paks (base and patches):
    ===
    python extract_game.py -g Core -o "C:\Modding\BG3_Extracted"
    ===

    Extracting everything:
    ===
    python extract_game.py -g All -o "C:\Modding\BG3_Extracted"
    ===

    Extracting everything but large paks:
    ===
    python extract_game.py -g All -n Large -o "C:\Modding\BG3_Extracted"
    ===

    Extracting multiple groups of paks (while ignoring Large):
    ===
    python extract_game.py -g Core;Assets;Localization -n Large -o "C:\Modding\BG3_Extracted"
    ===

    Pak group settings:
    ===
    {new_line.join([f'{x.name}: [{";".join(x.groups)}]' for x in GameData.data_paks])}
    ===
    """
    
    parser.epilog = f"Groups: {';'.join(sorted(all_groups.keys()))}"
    args = parser.parse_args()
    debug = args.debug == True

    if args.configure:
        bg3_current = os.environ.get("BG3_PATH", None)
        if bg3_current is not None:
            bg3_current = Path(bg3_current)
        lslib_current = os.environ.get("LSLIB_PATH", None)
        if lslib_current is not None:
            lslib_current = Path(lslib_current)
        extracted_current = os.environ.get("BG3_EXTRACTED", None)
        if extracted_current is not None:
            extracted_current = Path(extracted_current)
        if args.input:
            if bg3_current is None or args.input.resolve() != bg3_current.resolve():
                data_dir:Path = args.input
                if data_dir.name == "Data" or data_dir.is_file():
                    data_dir = data_dir.parent
                try:
                    os.system(f"SETX BG3_PATH {str(data_dir.absolute())}")
                    common.log(script_name, f"Saved BG3_PATH to:\n{data_dir}", True)
                except Exception as e:
                    common.log(script_name, f"Error saving BG3_PATH:\n{e}", True)
            else:
                common.log(script_name, f"BG3_PATH already set to {args.input}. Skipping.", True)

        if args.divine:
            if args.divine.is_file():
                args.divine = args.divine.parent
            if lslib_current is None or args.divine.resolve() != lslib_current.resolve():
                divine_path:Path = args.divine
                if divine_path.is_file():
                    divine_path = divine_path.parent
                try:
                    os.system(f"SETX LSLIB_PATH {str(divine_path.absolute())}")
                    common.log(script_name, f"Saved LSLIB_PATH to:\n{divine_path}", True)
                except Exception as e:
                    common.log(script_name, f"Error saving LSLIB_PATH:\n{e}", True)
            else:
                common.log(script_name, f"LSLIB_PATH already set to {args.divine}. Skipping.", True)

        if args.output:
            if args.output.is_file():
                args.output = args.output.parent
            if extracted_current is None or args.output.resolve() != extracted_current.resolve():
                try:
                    os.system(f"SETX BG3_EXTRACTED {str(args.output.absolute())}")
                    common.log(script_name, f"Saved BG3_EXTRACTED to:\n{args.output}", True)
                except Exception as e:
                    common.log(script_name, f"Error saving BG3_EXTRACTED:\n{e}", True)
            else:
                common.log(script_name, f"BG3_EXTRACTED already set to {args.output}. Skipping.", True)
        return

    if args.input is not None and args.output is not None and args.divine is not None:
        data_dir:Path = args.input
        output_dir:Path = args.output
        divine_path:Path = args.divine
        target_groups = str.split(args.groups, ";")
        ignore_groups = str.split(args.ignore, ";")
        specific_paks = str.split(args.specific, ";")

        if len(target_groups) == 0 and len(specific_paks) == 0:
            parser.print_help()
            os.error("No pak groups or paks specified.")
            return False

        if divine_path.is_dir():
            divine_path = divine_path.parent.joinpath("divine.exe")
            if not divine_path.exists():
                parser.print_help()
                os.error("Path to divine.exe is not set.")
                return False

        if not output_dir.exists():
            output_dir.mkdir(parents=True, exist_ok=True)
        common.log(script_name, f"Extracting game data to {output_dir}")
        successes = 0
        errors = 0

        GameData.add_patches(data_dir)
        pak_targets = GameData.get_targets(data_dir, target_groups, ignore_groups, specific_paks)
        total_paks = len(pak_targets)
        if total_paks == 0:
            os.error("No paks matched group settings, or no paks were found.")
            return False

        with alive_bar(total_paks, stats=False) as bar:
            async def process_pak(pak:Pak):
                nonlocal successes, errors, divine_path, output_dir, args
                common.log(script_name, f"Extracting {pak.full_path.name}...")
                bar.text(f"Extracting {pak.full_path.name}...")
                pak_output = Path(output_dir)
                if args.separate:
                    pak_output = pak_output.joinpath(pak.full_path.stem)
                if await GameData.extract_pak(pak.full_path, divine_path, pak_output, debug):
                    successes = successes + 1
                else:
                    errors = errors + 1
                bar()

            # tasks = [process_pak(pak) for pak in pak_targets]
            # await asyncio.gather(*tasks)
            for pak in pak_targets:
                await process_pak(pak)
            total = successes + errors
            msg = f"Processed {total} paks. Successes({successes}) Errors({errors})"
            bar.text(msg)
            common.log(script_name, msg)
    else:
        print(f"input({args.input}), output({args.output}), or divine({args.divine}) paths not set.\n Try --help for more info.")
        parser.print_help()
    
def main():
    asyncio.run(run())
    
if __name__ == "__main__":
    main()