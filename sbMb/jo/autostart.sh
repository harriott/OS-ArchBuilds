#!/bin/bash
# vim: fdl=2:

# machine dependent Openbox autostart additions
# called from  $Openbox/openbox/autostart/autostart

# (chmod u+x $MACHINE/jo/urxvtl.sh)

#=> 0 safely run omc in existing tmux
tmux send 'figlet -f univers tmux-S1' Enter
tmux split-window  # moves focus down, and allows  Tmux Resurrect  to  Restore  without clobbering
tmux send-keys omc Enter  # see $ARCHBUILDS/sbMb/jo/bashrc

#=> 1 open a new tmux window for btop
tmux new-window
tmux send btop Enter

#=> 2 open a new tmux session for working in
tmux new -s 1 -d

#==> 0 back to first window, open two panes on my new music
cdm () { tmux send-keys -t 1:$1 'cd /mnt/SD480GSSDPlus/Dropbox/CAM-toSort0' Enter; }
cdm 0; tmux split-window -t 1:0; cdm 0.1

#==> 1 launch nnn & cmus
tmux send-keys -t 1:0.0 'n' Enter
tmux send-keys -t 1:0.1 'm' Enter

