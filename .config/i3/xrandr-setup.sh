#!/bin/bash

if [[ "$HOSTNAME" == "archbox" ]]; then
	exec xrandr --output DisplayPort-1 --auto --primary --right-of HDMI-0
fi

if [[ "$HOSTNAME" == "archpad" ]]; then
	exec xrandr --output DP-2-2 --auto --left-of eDP-1

fi
