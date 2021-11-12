#!/bin/bash

# called by  $Openbox/openbox/autostart/urxvtl.sh
# (chmod u+x $MACHINE/jo/urxvtl.sh)

# safely run omc
tmux send 'figlet -f univers tmux-S1' Enter
tmux split-window  # moves focus down, and allows  Tmux Resurrect  to  Restore  without clobbering
tmux send omc Enter  # see $ARCHBUILDS/sbMb/jo/bashrc

