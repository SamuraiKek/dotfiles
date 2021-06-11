#!/bin/sh
xrandr \
  --output DisplayPort-0 --mode 2560x1440 --pos 5120x0 --rotate normal \
  --output DisplayPort-1 --primary --mode 2560x1440 --pos 2560x0 --rotate normal \
  --output HDMI-A-1 --mode 2560x1440 --pos 0x0 --rotate normal \
  --output HDMI-A-0 --off \
  --output DVI-D-0 --off

bspc monitor HDMI-A-1 -d 4 5 6
bspc monitor DisplayPort-1 -d 1 2 3
bspc monitor DisplayPort-0 -d 7 8 9
