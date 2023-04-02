#!/bin/bash

VSCODETHEME="$1"
VSCODE_SETTINGS_FILE="$HOME/.config/Code/User/settings.json"

[[ ! -e $VSCODE_SETTINGS_FILE || -z "$VSCODETHEME" ]] && exit 1

sed -i "s|\"workbench.colorTheme\": \".*\"|\"workbench.colorTheme\": \"$VSCODETHEME\"|" $VSCODE_SETTINGS_FILE
