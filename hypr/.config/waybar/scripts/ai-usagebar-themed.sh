#!/usr/bin/env bash
# Wrapper around ai-usagebar that recolors its hardcoded One-Dark tooltip
# palette to the current gtheme colors (read live from waybar's colors.css),
# so the tooltip border/title/labels follow the active theme.
# Bar/usage colors are set via --color-* flags passed through in "$@".

COLORS="$HOME/.config/waybar/colors/colors.css"

get() { grep -oP "@define-color $1 \K#[0-9a-fA-F]{6}" "$COLORS" 2>/dev/null; }

PRIMARY=$(get primary)                    # border + plan title  (was #61afef)
ON_SURFACE=$(get on_surface)              # section labels        (was #abb2bf)
ON_SURFACE_VARIANT=$(get on_surface_variant)  # secondary text    (was #5c6370)
SURFACE_VARIANT=$(get surface_variant)    # empty bar track       (was #3e4451)

ai-usagebar "$@" | sed -E \
  -e "s/#61afef/${PRIMARY:-#7aa2f7}/g" \
  -e "s/#abb2bf/${ON_SURFACE:-#c0caf5}/g" \
  -e "s/#5c6370/${ON_SURFACE_VARIANT:-#a9b1d6}/g" \
  -e "s/#3e4451/${SURFACE_VARIANT:-#414868}/g"
