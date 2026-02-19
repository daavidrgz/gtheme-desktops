#!/bin/bash

state_file="$XDG_RUNTIME_DIR/hypr-touchpad-state"
device=$(hyprctl devices -j | jq -r '.mice[] | select(.name | test("touchpad"; "i")) | .name' | head -1)

if [ -z "$device" ]; then
	echo "No touchpad found"
	exit 1
fi

if [ -f "$state_file" ] && [ "$(cat "$state_file")" = "disabled" ]; then
	hyprctl keyword "device[$device]:enabled" true
	echo "enabled" > "$state_file"
	caelestia shell toaster info "Touchpad Enabled" "" touchpad_mouse
else
	hyprctl keyword "device[$device]:enabled" false
	echo "disabled" > "$state_file"
	caelestia shell toaster info "Touchpad Disabled" "" touchpad_mouse_off
fi
