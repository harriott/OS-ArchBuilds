#!/bin/bash
# vim: fdl=2:

# machine dependent Openbox autostart additions
# called from  $Openbox/openbox/autostart/autostart

# test this configuration with
#  tmux kill-server; $Openbox/openbox/autostart/urxvtl.sh; $MACHINE/jo/autostart.sh

# (chmod u+x $MACHINE/jo/urxvtl.sh)

#=> 0 safely run omc in existing tmux
tmux send 'figlet -f univers tmux-S0' Enter
tmux split-window  # moves focus down, and allows  Tmux Resurrect  to  Restore  without clobbering
tmux send-keys omc Enter  # see $ARCHBUILDS/sbMb/jo/bashrc

#=> 1 open a new tmux window for btop
tmux new-window
tmux send btop Enter

#=> 2 open a new tmux session, detached, for working in
tmux new-session -s 1 -d -n 1

#==> 0 open a new tmux window for music
tmux new-window
tmux select-window -t 1:0

#==> 1 open two panes on my new music directory
cdm () { tmux send-keys -t 1:$1 'cd /mnt/SD480GSSDPlus/Dropbox/CAM-toSort0' Enter; }
cdm 0; tmux split-window -t 1:0; cdm 0.1

#==> 2 launch nnn & cmus
tmux send-keys -t 1:0.0 'n' Enter
tmux send-keys -t 1:0.1 'm' Enter

