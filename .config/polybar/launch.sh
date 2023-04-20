#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

if [[ "$HOSTNAME" == "archbox" ]]; then
	polybar archbox-bar1 2>&1 | tee -a /tmp/archbox-bar1.log & disown
	polybar archbox-bar2 2>&1 | tee -a /tmp/archbox-bar2.log & disown
fi

if [[ "$HOSTNAME" == "arch-2im" ]]; then
	polybar arch-2im-bar 2>&1 | tee -a /tmp/arch-2im-bar.log & disown
fi

if [[ "$HOSTNAME" == "archpad" ]]; then
	polybar archpad-bar1 2>&1 | tee -a /tmp/archpad-bar1.log & disown
	polybar archpad-bar2 2>&1 | tee -a /tmp/archpad-bar2.log & disown
fi

if [[ "$HOSTNAME" == "iArch" ]]; then
	polybar iarch-bar 2>&1 | tee -a /tmp/iarch-bar.log & disown
fi

echo "Bars launched..."

# Multiple monitors
#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload example &
#  done
#else
#  polybar --reload example &
#fi

