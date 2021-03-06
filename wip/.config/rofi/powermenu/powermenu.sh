#!/usr/bin/env bash

rofi_command="rofi -theme $HOME/.config/rofi/powermenu/powermenu.rasi"

shutdown="襤"
reboot="累"
lock=""
suspend="鈴"
logout=""

options="$shutdown\n$reboot\n$lock\n$suspend\n$logout"

chosen="$(echo -e "$options" | $rofi_command -p "Uptime: $uptime" -dmenu -selected-row 2)"
case $chosen in
	$shutdown)
			shutdown now
        ;;
	$reboot)
			shutdown -r now
        ;;
	$lock)
			lockscreen
        ;;
	$suspend)
			pamixer -m
			loginctl suspend
        ;;
	$logout)
			bspc quit
        ;;
esac
