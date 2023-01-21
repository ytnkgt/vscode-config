#!/bin/bash
script_home=$(cd $(dirname $0) && pwd)
setting_folder="$script_home/settings"
backup_folder="$script_home/backup"
backup_date=$(date "+%Y%m%d_%H%M%S")

if [ "$OSTYPE" == "msys" ]; then
    code_path="$USERPROFILE/appdata/roaming/code/user"
    echo "OS: Windows, Configuration Path: $code_path"
elif [ "$OSTYPE" == "linux-gnu" ]; then
    code_path="$HOME/.config/Code/User"
    echo "OS: Linux, Configuration Path: $code_path"
fi
