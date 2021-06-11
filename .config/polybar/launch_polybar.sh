#!/bin/sh
# -----------------------------------------------------------------------------
# Launch Polybar
#
# (Re)starts polybar. If there is a hostname override in place, runs that.
# Otherwise launches default config.
# -----------------------------------------------------------------------------

killall -q polybar
while pgrep -u "$(id -u)" -x polybar > /dev/null; do sleep 1; done

host_override -s polybar.sh || polybar --reload main &