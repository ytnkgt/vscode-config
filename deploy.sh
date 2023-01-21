#!/bin/bash
script_home=$(cd $(dirname $0) && pwd)
backup_folder="$script_home/backup"
backup_date=$(date "+%Y%m%d_%H%M%S")

if [ "$OSTYPE" == "msys" ]; then
    code_path="$USERPROFILE/appdata/roaming/code/user"
    echo $code_path
fi

# replace settings.json on vscode folder
echo "mkdir -p $backup_folder/$backup_date ; mv code_path/settings.json $backup_folder/$backup_date"
mkdir -p "$backup_folder/$backup_date" ; mv "$code_path/settings.json" "$backup_folder/$backup_date"
echo "cp $script_home/settings.json $code_path/settings.json"
cp "$script_home/settings.json" "$code_path/settings.json"

# replace keybindings.json on vscode folder
echo "mv $code_path/keybindings.json $backup_folder/$backup_date"
mv "$code_path/keybindings.json" "$backup_folder/$backup_date"
echo "cp $script_home/keybindings.json $code_path/keybindings.json"
cp "$script_home/keybindings.json" "$code_path/keybindings.json"
