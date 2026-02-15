#!/usr/bin/env bash
set -euo pipefail

SYMLINK_PATH="$HOME/.config/hypr/current_wallpaper"
ROFI_CONFIG="$HOME/.config/rofi/config-wallpaper.rasi"

# --- Determine current theme folder from symlink ---
if [[ ! -L "$SYMLINK_PATH" && ! -f "$SYMLINK_PATH" ]]; then
    echo "❌ Current wallpaper not found: $SYMLINK_PATH"
    exit 1
fi

CURRENT_WALL=$(readlink -f "$SYMLINK_PATH")  # resolve symlink
CURRENT_THEME_DIR=$(dirname "$CURRENT_WALL")  # wallpapers of current theme

# --- Pick wallpaper from current theme ---
RANDOM_WALL="$(find "$CURRENT_THEME_DIR" -maxdepth 1 -type f \
  \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" \) | shuf -n 1)"

SELECTED_WALL=$(
  {
    printf "󰒺  Random Wallpaper\0icon\x1f%s\n" "$RANDOM_WALL"

    find "$CURRENT_THEME_DIR" -maxdepth 1 -type f \
      \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" -o -iname "*.gif" \) \
      -printf "%T@ %p\n" | sort -nr | cut -d' ' -f2- |
    while read -r img; do
      name="$(basename "$img")"
      printf "%s\0icon\x1f%s\n" "$name" "$img"
    done
  } |
  rofi -dmenu -i -p "Select Wallpaper" -show-icons -config "$ROFI_CONFIG"
)

[ -z "$SELECTED_WALL" ] && exit 0

if [[ "$SELECTED_WALL" == *Random* ]]; then
    SELECTED_PATH="$RANDOM_WALL"
else
    SELECTED_PATH="$CURRENT_THEME_DIR/$SELECTED_WALL"
fi

# --- Apply wallpaper only using swww ---
notify-send "Applying Wallpaper"

swww img "$SELECTED_PATH" --transition-type any --transition-fps 60
ln -sf "$SELECTED_PATH" "$SYMLINK_PATH"

echo "✅ Applied wallpaper: $SELECTED_PATH"
