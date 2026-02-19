#!/bin/bash

# Generic webcam toggle via USB authorized sysfs attribute.
# Discovers webcams through /sys/class/video4linux, no hardcoded IDs.
#
# Setup (one-time, requires sudo):
#
#   1. Add your user to the video group:
#      sudo usermod -aG video $USER
#
#   2. Create a udev rule to allow unprivileged toggling:
#      echo 'ACTION=="add", SUBSYSTEM=="usb", ATTR{bInterfaceClass}=="0e", ATTR{bInterfaceSubClass}=="01", RUN+="/bin/sh -c '\''chgrp video /sys%p/../authorized && chmod g+w /sys%p/../authorized'\''"' | sudo tee /etc/udev/rules.d/99-webcam-toggle.rules
#
#   3. Reload udev rules and trigger:
#      sudo udevadm control --reload-rules
#      sudo udevadm trigger --action=add --subsystem-match=usb
#
#   4. Log out and back in for the group change to take effect.

state_file="${XDG_RUNTIME_DIR:-/tmp}/hypr-webcam-state"

find_webcam_usb_devices() {
	for vdev in /sys/class/video4linux/video*; do
		[ -e "$vdev" ] || continue
		dev=$(readlink -f "$vdev/device")
		while [ "$dev" != "/" ]; do
			if [ -f "$dev/authorized" ] && [ -f "$dev/idVendor" ]; then
				echo "$dev"
				break
			fi
			dev=$(dirname "$dev")
		done
	done | sort -u
}

if [ -f "$state_file" ]; then
	while IFS= read -r dev; do
		[ -w "$dev/authorized" ] && echo 1 > "$dev/authorized"
	done < "$state_file"
	rm -f "$state_file"
	caelestia shell toaster info "Webcam Enabled" "" videocam
else
	devices=$(find_webcam_usb_devices)
	if [ -z "$devices" ]; then
		caelestia shell toaster error "No webcam found" "" videocam_off
		exit 1
	fi
	echo "$devices" > "$state_file"
	while IFS= read -r dev; do
		[ -w "$dev/authorized" ] && echo 0 > "$dev/authorized"
	done <<< "$devices"
	caelestia shell toaster info "Webcam Disabled" "" videocam_off
fi
