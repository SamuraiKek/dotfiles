#!/usr/bin/env sh
# ---------------------------------------------------------------------------------------------------------------------
# Screen layout for my main machine, JadarmaPC
# Simple triple 1080p displays in landscape.
# ---------------------------------------------------------------------------------------------------------------------
xrandr \
	--output DP-1 --mode 2560x1440 --pos 5120x0 --rotate normal \
	--output DP-2 --primary --mode 2560x1440 --pos 2560x0 --rotate normal \
	--output HDMI-1 --off \
	--output HDMI-2 --mode 2560x1440 --pos 0x0 --rotate normal \
	--output DVI-D-1 --off
