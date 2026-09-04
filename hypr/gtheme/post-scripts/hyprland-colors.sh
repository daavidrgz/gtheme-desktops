#!/bin/bash
# $1 = the filled pattern output (~/.config/hypr/colors/colors.conf, hyprlang).
# hyprlock (>= v0.9) still uses hyprlang, so colors.conf stays as-is and we derive
# colors.lua from it for Hyprland >= 0.55, which is Lua-only.
conf="${1:-$HOME/.config/hypr/colors/colors.conf}"
lua="${conf%.conf}.lua"

{
    echo "-- gtheme-generated. Derived from $(basename "$conf") by hyprland-colors.sh."
    echo "-- Do not edit; regenerated on every 'gtheme t apply'."
    echo "return {"
    # `$name = value` -> `  name = "value",`   (comments and blanks are dropped)
    sed -nE 's/^[[:space:]]*\$([A-Za-z0-9_]+)[[:space:]]*=[[:space:]]*(.*[^[:space:]])[[:space:]]*$/    \1 = "\2",/p' "$conf"
    echo "}"
} > "$lua"

hyprctl reload 2>/dev/null || true
