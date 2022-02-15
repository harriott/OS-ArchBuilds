#!/bin/bash
# vim: fdl=1:

# called by  $Openbox/openbox/autostart/urxvtl.sh
# (chmod u+x $MACHINE/jo/urxvtl.sh)

#=> cbatticon
cbatticon &

#=> MicTray
mictray &

#=> open a new window for btop
tmux new-window
tmux send btop Enter

