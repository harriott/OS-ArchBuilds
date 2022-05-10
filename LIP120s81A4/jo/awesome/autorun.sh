#!/bin/bash
# vim: fdl=1:

# Joseph Harriott - Mon 02 May 2022
# called by  $MACHINE/jo/awesome/rc.lua
# symlinked in my  $ARCHBUILDS/build-scripts/39-awesome.sh
# (chmod u+x $MACHINE/jo/awesome/autorun.sh)

# run() { if ! pgrep -f "$1"; then "$@" & ; fi; }
run() {
    if ! pgrep "$1"; then
        "$@" &
    fi
}
run blueman-applet
run copyq  # because CopyQ's internal Autostart wouldn't work in Openbox
run dropbox
run nm-applet
run pnmixer
run udiskie -t

#=> for laptops
run cbatticon
run mictray

