#!/bin/bash

ID=$(xinput list | grep -i "touchpad" | awk '{print $6}' | sed 's/.*=//')

STATE=$(xinput list-props $ID | grep -i "device enabled" | awk '{print $4}')

if [ $STATE -eq 1 ]; then
	xinput disable $ID
else
	xinput enable $ID
fi
