#!/usr/bin/env bash
set -euo pipefail
shopt -s nullglob

# --- Step 1: Current Hyprland wallpaper file ---
HYPR_WALLPAPER_FILE="$HOME/.config/hypr/current_wallpaper"

if [[ ! -f "$HYPR_WALLPAPER_FILE" ]]; then
    echo "Current wallpaper file not found: $HYPR_WALLPAPER_FILE"
    exit 1
fi

# --- Step 2: Prepare destination folder ---
DEST_BASE="$HOME/Pictures/wallpapers"
DEST_FOLDER="$DEST_BASE/saved"
mkdir -p "$DEST_FOLDER"

# --- Step 3: Detect extension (PNG or JPG) using hexdump ---
FILE_HEADER=$(head -c 8 "$HYPR_WALLPAPER_FILE" | hexdump -v -e '/1 "%02x"')

if [[ "$FILE_HEADER" == "89504e470d0a1a0a" ]]; then
    EXT="png"
elif [[ "${FILE_HEADER:0:4}" == "ffd8" ]]; then
    EXT="jpg"
else
    EXT="png"
fi

# --- Step 4: Copy wallpaper with sequential name ---
i=1
while :; do
    files=("$DEST_FOLDER/wallpaper_$i."*)
    if (( ${#files[@]} == 0 )); then
        break
    fi
    ((i++))
done

NEW_FILENAME="wallpaper_$i.$EXT"

cp -- "$HYPR_WALLPAPER_FILE" "$DEST_FOLDER/$NEW_FILENAME"

echo "Copied current wallpaper to '$DEST_FOLDER/$NEW_FILENAME'"
