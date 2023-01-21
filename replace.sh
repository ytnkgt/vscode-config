#!/bin/bash

# Replace settings.json and keybindings.json with the ones in vscode folder
# Use this script to update the configuration in repository with the local setting
#
# This script works like this:
# 1. move the local settings with different name from vscode folder to project root
# 2. move the old settings in project root to vscode folder
# 3. rename the settings in project root
# 4. execute deploy script to backup the old settings in vscode folder and move the local settings back
source setenv.sh

# replace settings.json on vscode folder
mv "$code_path/settings.json" "$setting_folder/settings.json.bk"
mv "$setting_folder/settings.json" "$code_path/settings.json"
mv "$setting_folder/settings.json.bk" "$setting_folder/settings.json"

# replace keybindings.json on vscode folder
mv "$code_path/keybindings.json" "$setting_folder/keybindings.json.bk"
mv "$setting_folder/keybindings.json" "$code_path/keybindings.json"
mv "$setting_folder/keybindings.json.bk" "$setting_folder/keybindings.json"

bash deploy.sh
