#!/usr/bin/env fish

if test "$argv[1]" = '-g'
    set group
    set -e $argv[1]
end

if test (count $argv) -ne 2
    echo 'Wrong number of arguments. Usage: ./wsaction.fish [-g] <dispatcher> <workspace>'
    exit 1
end

set -l active_ws (hyprctl activeworkspace -j | jq -r '.id')

if set -q group
    # Move to group
    set -l target (math "($argv[2] - 1) * 10 + $active_ws % 10")
else
    # Move to ws in group
    set -l target (math "floor(($active_ws - 1) / 10) * 10 + $argv[2]")
end

# Hyprland >= 0.55 with a Lua config takes Lua expressions in `hyprctl dispatch`;
# hyprdispatch falls back to the legacy word form on a hyprlang session.
switch $argv[1]
    case workspace
        ~/.config/hypr/scripts/hyprdispatch "hl.dsp.focus({ workspace = $target })" workspace $target
    case movetoworkspace
        ~/.config/hypr/scripts/hyprdispatch "hl.dsp.window.move({ workspace = $target })" movetoworkspace $target
    case movetoworkspacesilent
        ~/.config/hypr/scripts/hyprdispatch "hl.dsp.window.move({ workspace = $target, follow = false })" movetoworkspacesilent $target
    case '*'
        echo "Unsupported dispatcher: $argv[1] (expected workspace, movetoworkspace or movetoworkspacesilent)"
        exit 1
end
