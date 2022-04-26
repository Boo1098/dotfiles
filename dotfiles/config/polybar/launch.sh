#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
#for m in $(polybar --list-monitors | cut -d":" -f1); do
#	MONITOR=$m polybar --reload top &
#done
#polybar top 2>&1 | tee -a /tmp/polybar1.log & disown
#MONITOR="HDMI-0" polybar toptray 2>&1 | tee -a /tmp/polybar1.log & disown
MONITOR="DVI-D-0" polybar toptray 2>&1 | tee -a /tmp/polybar1.log & disown
MONITOR="DP-0" polybar topnotray 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
