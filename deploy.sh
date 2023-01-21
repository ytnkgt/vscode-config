#!/bin/bash
script_home=$(cd $(dirname $0) && pwd)
backup_folder="$script_home/backup"
if [ $ostype == "msys" ] ; then
    code_path="$userprofile/appdata/roaming/code/user"
    echo $code_path
fi
mv "$code_path/settings.json" "$backup_folder"
cp "$script_home/settings.json" "$code_path/settings.json"
mv "$code_path/keybindings.json" "$backup_folder"
cp "$script_home/keybindings.json" "$CODE_PATH/keybindings.json"