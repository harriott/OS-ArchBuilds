#!/bin/bash
# vim: fdl=1:

# called by  $Openbox/openbox/autostart/autostart
# (chmod u+x $MACHINE/jo/autostart.sh)

#=> cbatticon
cbatticon &

#=> MicTray
mictray &

#=> open a new window for btop
tmux new-window
sleep 1; tmux send btop Enter

