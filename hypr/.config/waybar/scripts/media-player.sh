#!/bin/bash

case "$1" in
	title)
		echo 'No media'
		playerctl metadata --format '{{artist}} - {{title}}' --follow 2>/dev/null | sed -u 's/^ *- *$//;s/^$/No media/'
		;;
	status)
		echo '󰐊'
		playerctl status --follow 2>/dev/null | sed -u 's/^Playing$/󰏤/;s/^Paused$/󰐊/;s/^Stopped$/󰐊/;s/^$/󰐊/'
		;;
esac
