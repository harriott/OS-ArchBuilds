#!/bin/bash
# vim: fdl=2:

# Joseph Harriott, jeu 02 juil 2026

# machine dependent autostart tmux tweaks
# called from
#  $ABjo/wm/Xfce/terminal_startup.sh
#  $Obc/autostart

# test (or reload) this script with
#  tmux kill-server
#  bash $ABjo/wm/terminal/startup.sh
#  bash $ABno/HPEB840G3x/hi-jo/term/tmux_begin.sh  # this script

# (chmod u+x $machBld/jo/urxvtl.sh)

#=> 0 launch btop and open a new tmux window
tmux send btop Enter
tmux new-window
tmux send fastfetch Enter
# tmux send neofetch Enter

