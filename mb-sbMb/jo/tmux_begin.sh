#!/bin/bash
# vim: fdl=2:

# Joseph Harriott, Wed 03 Jan 2024

# machine dependent Openbox autostart tmux tweaks
# called from  $Obc/autostart/autostart

# test (or reload) this script with
#  tmux kill-server
#  bash $Obc/autostart/urxvtl+tmux.sh
#  bash $machBld/jo/tmux_begin.sh

# (chmod u+x $machBld/jo/urxvtl.sh)

#=> 0 safely run omc in existing tmux
tmux send 'figlet -f univers tmux-S0 -t' Enter
tmux split-window  # moves focus down, and allows  Tmux Resurrect  to  Restore  without clobbering
tmux send-keys omc Enter  # see $machBld/jo/Bash/bashrc

#=> 1 open a new tmux window for btop
tmux new-window
tmux send btop Enter

#=> 2 open a new tmux session, detached, for working in
tmux new-session -s 1 -d -n 1

#==> 0 open a new tmux window for music
tmux new-window
tmux select-window -t 1:0

#==> 1 open two panes on my new music directory
cdm () { tmux send-keys -t 1:0 'cd /mnt/SDU3D1TB/Dropbox/CAM-toSort0' Enter; }
cdm 0; tmux split-window -t 1:0; cdm 0.1

#==> 2 launch nnn & cmus
tmux send-keys -t 1:0.0 'n' Enter
# tmux send-keys -t 1:0.1 'm' Enter
tmux send-keys -t 1:0.1 'systemctl status rsnapshot-hourly.timer' Enter

