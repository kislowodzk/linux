#!/bin/sh
xrandr --output LVDS-1 --mode 1366x768 --pos 0x753 --rotate normal --output VGA-1 --primary --mode 1920x1080 --pos 1366x0 --rotate normal --output HDMI-1 --off --output DP-1 --off
exec --no-startup-id "feh --bg-scale ~/.tapeta/tapeta_gruvbox_orange.jpg"
