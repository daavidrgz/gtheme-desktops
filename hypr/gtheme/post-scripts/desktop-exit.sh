#!/bin/sh

sleep 1
killall -u $(whoami)
exit $?
