#!/bin/bash

# Replace settings.json and keybindings.json with the ones in vscode folder
# Use this script to update the configuration in repository with the local setting
#
# This script works like this:
# 1. move the local settings with different name from vscode folder to project root
# 2. move the old settings in project root to vscode folder
# 3. rename the settings in project root
# 4. execute deploy script to backup the old settings in vscode folder and move the local settings back

script_home=$(cd $(dirname $0) && pwd)

if [ "$OSTYPE" == "msys" ]; then
    code_path="$USERPROFILE/appdata/roaming/code/user"
    echo $code_path
fi

# replace settings.json on vscode folder
mv "$code_path/settings.json" "$script_home/settings.json.bk"
mv "$script_home/settings.json" "$code_path/settings.json"
mv "$script_home/settings.json.bk" "$script_home/settings.json"

# replace keybindings.json on vscode folder
mv "$code_path/keybindings.json" "$script_home/keybindings.json.bk"
mv "$script_home/keybindings.json" "$code_path/keybindings.json"
mv "$script_home/keybindings.json.bk" "$script_home/keybindings.json"

bash deploy.sh
