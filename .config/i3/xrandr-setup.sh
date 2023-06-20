#!/bin/bash

if [[ "$HOSTNAME" == "archbox" ]]; then
	exec xrandr --output DisplayPort-1 --auto --primary --right-of HDMI-0
fi

if [[ "$HOSTNAME" == "archpad" ]]; then
	exec xrandr --output eDP-1 --auto --right-of DP-2-2
	exec xrandr --output DP-2-2 --mode 1920x1080 --left-of eDP-1
	exec xrandr --output HDMI-1 --mode 1366x768 --left-of DP-2-2
fi
