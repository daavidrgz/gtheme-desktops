#!/bin/bash

if [ "$1" == "toggleMute"  ]; then
	pactl set-sink-mute @DEFAULT_SINK@ toggle
	if pactl get-sink-mute @DEFAULT_SINK@ | grep -i "yes" &>/dev/null; then
		dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume "Audio Muted"
	else
		dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume "Audio Unmuted"
	fi
	exit 0
fi

VOLUME_STEP=2
if pactl get-default-sink | grep -i "bluez_sink" &>/dev/null; then
	VOLUME_STEP=1
fi

PREV_VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
if [[ "$1" == "-" || $PREV_VOL -le $((100 - $VOLUME_STEP)) ]]; then
	pactl set-sink-volume @DEFAULT_SINK@ $1$VOLUME_STEP%
fi
CURRENT_VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume -h int:value:$CURRENT_VOL "Volume: $CURRENT_VOL%"
