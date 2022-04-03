#!/bin/bash

VOLUME_STEP=2
if pactl get-default-sink | grep -i "bluez_sink" &>/dev/null; then
	VOLUME_STEP=1
fi

PREV_VOL=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
if [[ "$1" == "-" || $PREV_VOL -le $((100 - $VOLUME_STEP)) ]]; then
	pactl set-sink-volume @DEFAULT_SINK@ $1$VOLUME_STEP%
fi
