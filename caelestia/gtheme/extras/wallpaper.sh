#!/bin/bash

WALLPAPER_URL="$1"
STATE_DIR="$HOME/.local/state/caelestia/wallpaper"

[ -z "$WALLPAPER_URL" ] && exit 1

# Resolve to absolute path
WALLPAPER_URL="$(realpath "$WALLPAPER_URL")"

# Keep ~/.wallpaper copy for compatibility
cp "$WALLPAPER_URL" ~/.wallpaper

# Write wallpaper path to caelestia state file
# The shell watches this file and updates the background automatically
# We write directly to avoid caelestia CLI regenerating scheme.json (gtheme handles colors)
mkdir -p "$STATE_DIR"
echo "$WALLPAPER_URL" > "$STATE_DIR/path.txt"
