#!/bin/sh
xrandr --output eDP1 --off --output DP1 --mode 2560x1080 --pos 0x0 --rotate normal --output DP2 --off --output DP3 --off --output VIRTUAL1 --off
apply_wallpaper
i3-msg restart
