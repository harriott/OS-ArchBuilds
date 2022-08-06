#!/bin/bash
# vim: fdl=1:

# Joseph Harriott - Mon 02 May 2022
# called by  $MACHINE/jo/awesome/rc.lua
# symlinked in my  $bs/39-awesome.sh
# (chmod u+x $MACHINE/jo/awesome/autorun.sh)

# run() { if ! pgrep -f "$1"; then "$@" & ; fi; }
run() {
    if ! pgrep "$1"; then
        "$@" &
    fi
}
run blueman-applet
run conky -c $MACHINE/jo/conkyrc
run copyq  # because CopyQ's internal Autostart wouldn't work in Openbox
run dropbox
run nm-applet
run pnmixer
run redshift-gtk -l 48.8646:2.3984 &
run udiskie -t

#=> for laptops
run cbatticon
run mictray

