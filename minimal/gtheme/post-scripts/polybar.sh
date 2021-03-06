#!/usr/bin/env bash

# Terminate already running bar instances
killall -q -s KILL polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar --config=~/.config/polybar/cfg.ini main 2>&1 | tee -a /tmp/polybar1.log & disown
