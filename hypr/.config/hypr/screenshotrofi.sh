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
        ~/.config/hypr/scripts/hyprdispatch 'hl.dsp.global("quickshell:regionScreenshot")' global "quickshell:regionScreenshot"
        ;;
    "     Image Search (Google Lens)")
        ~/.config/hypr/scripts/hyprdispatch 'hl.dsp.global("quickshell:regionSearch")' global "quickshell:regionSearch"
        ;;
    "     OCR Text Extraction")
        ~/.config/hypr/scripts/hyprdispatch 'hl.dsp.global("quickshell:regionOcr")' global "quickshell:regionOcr"
        ;;
    "     Region Recording")
        ~/.config/hypr/scripts/hyprdispatch 'hl.dsp.global("quickshell:regionRecord")' global "quickshell:regionRecord"
        ;;
    "     Region Recording with Audio")
        ~/.config/hypr/scripts/hyprdispatch 'hl.dsp.global("quickshell:regionRecordWithSound")' global "quickshell:regionRecordWithSound"
        ;;
    "     Color Picker")
        hyprpicker -a
        ;;
    *)
        exit 1
        ;;
esac
