#!/bin/sh

# Kill caelestia shell before switching desktop
qs -c caelestia kill 2>/dev/null || true
sleep 1
killall -u $(whoami)
exit $?
