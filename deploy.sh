#!/bin/bash
source setenv.sh

# replace settings.json on vscode folder
echo "mkdir -p $backup_folder/$backup_date ; mv code_path/settings.json $backup_folder/$backup_date"
mkdir -p "$backup_folder/$backup_date" ; mv "$code_path/settings.json" "$backup_folder/$backup_date"
echo "cp $setting_folder/settings.json $code_path/settings.json"
cp "$setting_folder/settings.json" "$code_path/settings.json"

# replace keybindings.json on vscode folder
echo "mv $code_path/keybindings.json $backup_folder/$backup_date"
mv "$code_path/keybindings.json" "$backup_folder/$backup_date"
echo "cp $setting_folder/keybindings.json $code_path/keybindings.json"
cp "$setting_folder/keybindings.json" "$code_path/keybindings.json"
