#!/usr/bin/env sh
# ---------------------------------------------------------------------------------------------------------------------
# BSPWM desktop layout for my main machine, JadarmaPC
# Three desktops per screen, from left to right: 1,2,3,4,5,6,7,8,9
# ---------------------------------------------------------------------------------------------------------------------
bspc monitor HDMI-2 -d 1 2 3
bspc monitor DP-2 -d 4 5 6
bspc monitor DP-1 -d 7 8 9

xwallpaper --no-randr --stretch "$XDG_DATA_HOME/dotfiles/images/greenwatch.png"
