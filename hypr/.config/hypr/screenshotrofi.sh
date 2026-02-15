#!/usr/bin/env bash

# Define options with icons
options=(
    "     Region Screenshot"
    "     Image Search (Google Lens)"
    "     OCR Text Extraction"
    "     Region Recording"
    "     Region Recording with Audio"
    "     Color Picker"
)

# Show menu
choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -p "QuickShell" -theme ~/.config/rofi/sl.rasi)

# Exit if no choice is made (e.g., pressing Esc)
[[ -z "$choice" ]] && exit 1

# Add a small delay to let Rofi disappear
sleep 0.2

# Execute corresponding command
case "$choice" in
    "     Region Screenshot")
        hyprctl dispatch global "quickshell:regionScreenshot"
        ;;
    "     Image Search (Google Lens)")
        hyprctl dispatch global "quickshell:regionSearch"
        ;;
    "     OCR Text Extraction")
        hyprctl dispatch global "quickshell:regionOcr"
        ;;
    "     Region Recording")
        hyprctl dispatch global "quickshell:regionRecord"
        ;;
    "     Region Recording with Audio")
        hyprctl dispatch global "quickshell:regionRecordWithSound"
        ;;
    "     Color Picker")
        hyprpicker -a
        ;;
    *)
        exit 1
        ;;
esac
