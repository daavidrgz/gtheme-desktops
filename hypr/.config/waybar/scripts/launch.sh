#!/bin/bash

WAYBAR_DIR="$HOME/.config/waybar"
THEMES_DIR="$WAYBAR_DIR/themes"
CURRENT_THEME_FILE="$WAYBAR_DIR/.current_theme"

# Read current theme or default
THEME="default"
[ -f "$CURRENT_THEME_FILE" ] && THEME=$(cat "$CURRENT_THEME_FILE")
[ ! -d "$THEMES_DIR/$THEME" ] && THEME="default"

# Ensure symlinks exist
ln -sf "$THEMES_DIR/$THEME/config.jsonc" "$WAYBAR_DIR/config.jsonc"
ln -sf "$THEMES_DIR/$THEME/style.css" "$WAYBAR_DIR/style.css"

# Restart waybar
pkill waybar
waybar & disown
