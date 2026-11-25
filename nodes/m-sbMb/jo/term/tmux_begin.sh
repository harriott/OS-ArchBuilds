#!/bin/bash
# vim: fdl=2:

# Joseph Harriott, Wed 25 Nov 2026

# machine dependent  tmux  startup
# $ABno/m-sbMb/jo/term/tmux_begin.sh
#  called from
#   $ABjo/wm/Xfce/terminal_startup.sh
#   $Obc/autostart

#=> 0 safely run omc in existing tmux
tmux send 'figlet -f univers tmux-S0 -t' Enter
tmux split-window  # moves focus down, and allows  Tmux Resurrect  to  Restore  without clobbering
tmux send-keys omc Enter

#=> 1 open a new tmux window for btop
tmux new-window
tmux send gtop Enter

#=> 2 open a new tmux session, detached, for working in
tmux new-session -s 1 -d -n 1

#==> general workflow
tmux send-keys -t 1:0.0 'fastfetch -c examples/7.jsonc' Enter

# #==> music/toSort workflow 0 windows
# tmux new-window  # will be first work window
# tmux select-window -t 1:0  # go back to music

# #==> music/toSort workflow 1 open two panes
# cdm () { tmux send-keys -t 1:0 'cd /mnt/SDU3D1TB/Dropbox/music/toSort' Enter; }
# # cdm 0; tmux split-window -t 1:0; cdm 0.1
# cdm; tmux split-window -t 1:0; cdm

# #==> music/toSort workflow 2 launch nnn & cmus
# tmux send-keys -t 1:0.0 'n' Enter
# tmux send-keys -t 1:0.1 'm' Enter
# tmux select-pane -t 0
# # tmux send-keys -t 1:0.1 'systemctl status rsnapshot-hourly.timer' Enter

