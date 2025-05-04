# Baldur's Gate 3 Modding Tools  

## Installation  

Either clone this repository, or download it as a zip with the green Code button (click Code -> Download as Zip).

[Refer to the python script installation section for more information.](#installation-1)

## Baldur's Gate 3 Scripting References  

You can find maintained copies of the "Osiris in Lua" scripts in the [generated](https://github.com/LaughingLeader/BG3ModdingTools/tree/master/generated) folder. These are generated using the latest `story_header.div`, and provide auto-completion for the Osiris scripting language functions from a [Script Extender](https://github.com/Norbyte/bg3se) script.

tl;dr, these are references meant for mod developers, to make scripting easier. They shouldn't be added to a mod directly, but rather included as an external reference in an lua extension.

There's a tutorial in the wiki section for setting up SE scripts: 

[Script Extender Lua Setup](https://github.com/LaughingLeader/BG3ModdingTools/wiki/Script-Extender-Lua-Setup)

### [Osi.lua](https://github.com/LaughingLeader/BG3ModdingTools/blob/master/generated/Osi.lua)  

This reference provides auto-completion for all the story header functions in `Osi`, including the proc-overrides that allow for less arguments (those are defined in Osiris scripts, instead of the game exe).

### [Osi.Events.lua](https://github.com/LaughingLeader/BG3ModdingTools/blob/master/generated/Osi.Events.lua)  

Events can be invoked when using them like a function, and this reference provides auto-completion for them (also in the `Osi` table). These are split off from `Osi.lua` since invoking events like functions isn't a typical usage case.

### [Ext.Osiris.RegisterListener.lua](https://github.com/LaughingLeader/BG3ModdingTools/blob/master/generated/Ext.Osiris.RegisterListener.lua)  

This reference provides auto-completion for `Ext.Osiris.RegisterListener`.

## Snippets  

Inside the .vscode folder is a file named `BaldursGate3.code-snippets`.  
This is a snippet file for [Visual Studio Code](https://code.visualstudio.com/), allowing text insertion using keywords (or a shortcut if configured).  

### Installation 

You can use `BaldursGate3.code-snippets` either in a .vscode folder within your project's workspace (you can create this folder), or you can place it in this folder to make it a global snippet for all workspaces:
```
%APPDATA%\Code\User\snippets
```
If you're using [Visual Studio Code Insiders](https://code.visualstudio.com/insiders/):
```
%APPDATA%\Code - Insiders\User\snippets
```

### Current Snippets

| Keyword | Description |
| ----------- | ----------- |
| bg3uuid | Generates a random version 4 UUID, used all over the place. |
| bg3handle | Generates a random localization UUID, used in files such as english.xml, StringKeyFile.lsb, root templates, character creation presets, etc. |
| bg3version1 | The Int64 value for 1.0.0.0 - A good starting point for mods. Use in your mod's `meta.lsx`. |
| bg3dependency | Inserts a ModuleShortDesc node. Goes under the Dependencies node in a `meta.lsx`, or can be used for entries under the Mods node in modsettings.lsx. |
| bg3modmeta | Generates the contents of a full `Mods\ModName_UUID\meta.lsx`. |

## Python Scripts  

A collection of python scripts are within the scripts folder, allowing various utilities through the commandline. Some may require [LSLib](https://github.com/Norbyte/lslib) for full functionality (download the latest release, and keep track of where divine.exe is).  
### Installation  
#### Requirements  

* [Python](https://www.python.org/downloads/) (3.10 or higher, though higher versions may have breaking changes)
* [LSLib](https://github.com/Norbyte/lslib/releases/latest)
* [ImageMagick](https://imagemagick.org/script/download.php) (Required if you want to use `convert_images.py`)

After python is installed (or if it was already installed), make sure to install required packages with this command in the command line, or double click `InstallScriptRequirements.bat`:
```
pip install -r scripts/requirements.txt
```
This will download the necessary packages used by the scripts. 
Note that the path to requirements.txt is relative to wherever the command prompt's working directory is (so if you open BG3ModdingTools in VSCode, it'll be in the scripts folder like above).

### Environment Variables  

The scripts will check for specific environment variables, which will allow you to omit various arguments, for easier use.

| Name | Description |
| ----------- | ----------- |
| BG3_PATH | The path to the Baldur's Gate 3 root folder, i.e. `C:\Program Files (x86)\Steam\steamapps\common\Baldurs Gate 3` |
| LSLIB_PATH | The path to wherever you extracted an LSLib release, i.e. `C:\Modding\BG3\Tools\ConverterApp` |
| BG3_EXTRACTED | The path to all of Baldur's Gate 3 extracted data. This is used for certain scripts like `extract_game` for automatic output. |

#### How to set Environment Variables  

1. Hit the Windows Key.
2. Type "environment", then click "Edit environment variables for your account" option in the search window.
3. Click the "Environment Variables" button in the window that popped up.
4. Under "User Variables for Username" section, click "New" to add a variable, then enter the name and path as specified in the table above.

**You may need to restart the command prompt, or enter the `refreshEnv` command (if you have chocolatey) to refresh all environment variables, so python will see them.**

# Links

* [Leader's Lair Discord](https://discord.gg/j5gp6MD)
* [BG3 Modding Community Discord](https://discord.gg/bg3mods)
