#!/bin/bash
# vim: fdl=2:

# Joseph Harriott, Wed 08 May 2024

# machine dependent Openbox autostart tmux tweaks
# called from
#  $ABjo/wm/Xfce/terminal_startup.sh
#  $Obc/autostart

# test (or reload) this script with
#  tmux kill-server
#  bash $ABjo/wm/terminal/startup.sh
#  bash $machBld/jo/tmux_begin.sh

# (chmod u+x $machBld/jo/urxvtl.sh)

#=> 0 launch btop and open a new tmux window
tmux send btop Enter
tmux new-window
tmux send neofetch Enter

