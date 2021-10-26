# Baldur's Gate 3 Modding Tools  

## Installation  

Either clone this repository, or download it as a zip with the green Code button (click Code -> Download as Zip).

[Refer to the python script installation section for more information.](#installation-1)

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
| bg3uuid | Generates a random version 4 UUID |
| bg3handle | Generates a random localization UUID, used in files such as english.xml, StringKeyFile.lsb, root templates, character creation presets, etc. |
| bg3version1 | The Int64 value for 1.0.0.0. Good starting point for mods. |
| bg3dependency | Inserts a ModuleShortDesc node. Goes under the Dependencies node in a meta.lsx, or can be used for entries under the Mods node in modsettings.lsx. |

## Python Scripts  

A collection of python scripts are within the scripts folder, allowing various utilities through the commandline. Some may require [LSLib](https://github.com/Norbyte/lslib) for full functionality (download the latest release, and keep track of where divine.exe is).  
### Installation  
#### Requirements  

* [Python](https://www.python.org/downloads/) (3.10 or higher)
* [LSLib](https://github.com/Norbyte/lslib/releases/latest)

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

#### How to set Environment Variables  

1. Hit the Windows Key.
2. Type "environment", then click "Edit the system environment variables" in the search window.
3. Click the "Environment Variables" button in the window that popped up.
4. Under "User Variables for Username", click "New" to add a variable, then enter the name and path as specified in the table above.

**You may need to restart the command prompt, or enter the `refreshEnv` command (if you have chocolatey) to refresh all environment variables, so python will see them.**
