#!/usr/bin/env sh
# ---------------------------------------------------------------------------------------------------------------------
# Polybar layout for my main machine, JadarmaPC
# Main bar in center monitor, simple bar in side monitors.
# ---------------------------------------------------------------------------------------------------------------------

MONITOR=HDMI-2 polybar --reload simple &
MONITOR=DP-2 polybar --reload main &
MONITOR=DP-1 polybar --reload simple &
unset MONITOR
