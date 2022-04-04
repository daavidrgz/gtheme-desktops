#!/bin/bash

getDefaultSinkName() {
  pacmd stat | awk -F": " '/^Default sink name: /{print $2}'
}

getDefaultSinkVolume() {
	pacmd list-sinks | tr -d '\n' | grep -Pozi "$(getDefaultSinkName).*volume.*%" | grep -Poz "(?<=/)[ ]*(\d+)(?=%)" | awk '{print $1}'
}

getDefaultSinkMute() {
	pacmd list-sinks |
		awk '/^\s+name: /{indefault = $2 == "<'$(getDefaultSinkName)'>"}
			/^\s+muted: / && indefault {print $2; exit}'
}

if [ "$1" == "--toggle"  ]; then
	pactl set-sink-mute @DEFAULT_SINK@ toggle
	if [ "$(getDefaultSinkMute)" == "yes" ]; then
		dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume "Audio Muted"
	else
		dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume "Audio Unmuted"
	fi
	exit 0
fi

VOLUME_STEP=2
if getDefaultSinkName | grep -i "bluez_sink" &>/dev/null; then
	VOLUME_STEP=1
fi

if [ "$1" == "--decrease" ]; then
	VOLUME_STEP=-$VOLUME_STEP
fi

PREV_VOL=$(getDefaultSinkVolume)
if [[ "$1" == "--decrease" || $PREV_VOL -le $((100 - $VOLUME_STEP)) ]]; then
  pactl set-sink-volume @DEFAULT_SINK@ "$(($PREV_VOL + $VOLUME_STEP))%"
	setDefaultSinkVol 
fi
CURRENT_VOL=$(getDefaultSinkVolume)
dunstify -a System -t 1000 -h string:x-dunst-stack-tag:volume -h int:value:$CURRENT_VOL "Volume: $CURRENT_VOL%"
