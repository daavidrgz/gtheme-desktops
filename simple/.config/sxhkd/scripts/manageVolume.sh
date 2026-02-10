#!/bin/bash

# Compatible with both PipeWire and PulseAudio (uses pactl only)

getDefaultSinkVolume() {
	pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -1
}

isMuted() {
	pactl get-sink-mute @DEFAULT_SINK@ | grep -q 'yes'
}

isBluetoothSink() {
	pactl get-default-sink | grep -qi 'bluez'
}

if [ "$1" == "--toggle" ]; then
	pactl set-sink-mute @DEFAULT_SINK@ toggle
	if isMuted; then
		dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume "Audio Muted"
	else
		CURRENT_VOL=$(getDefaultSinkVolume)
		dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume -h int:value:"$CURRENT_VOL" "Volume: $CURRENT_VOL%"
	fi
	exit 0
fi

VOLUME_STEP=2
if isBluetoothSink; then
	VOLUME_STEP=1
fi

if [ "$1" == "--increase" ]; then
	PREV_VOL=$(getDefaultSinkVolume)
	if [ "$PREV_VOL" -lt 100 ]; then
		pactl set-sink-volume @DEFAULT_SINK@ "+${VOLUME_STEP}%"
	fi
elif [ "$1" == "--decrease" ]; then
	pactl set-sink-volume @DEFAULT_SINK@ "-${VOLUME_STEP}%"
fi

CURRENT_VOL=$(getDefaultSinkVolume)
dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume -h int:value:"$CURRENT_VOL" "Volume: $CURRENT_VOL%"
