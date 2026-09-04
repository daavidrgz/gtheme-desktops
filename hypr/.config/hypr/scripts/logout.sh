#!/bin/bash
# Exit the Hyprland session. Goes through hyprdispatch so it works whether the session
# booted from hyprland.lua (Lua dispatchers) or hyprland.conf (legacy dispatchers).
exec ~/.config/hypr/scripts/hyprdispatch 'hl.dsp.exit()' exit
