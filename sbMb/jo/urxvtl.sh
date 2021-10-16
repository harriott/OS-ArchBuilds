#!/bin/bash

# (chmod u+x $Openbox/openbox/autostart/urxvtl.sh)

# urxvt launch - to be called from  $Openbox/openbox/autostart/urxvtl.sh

# safely run omc
tmux split-window  # moves focus down, and allows  Tmux Resurrect  to Restore without clobbering
tmux send omc Enter  # see $ARCHBUILDS/sbMb/jo/bashrc

