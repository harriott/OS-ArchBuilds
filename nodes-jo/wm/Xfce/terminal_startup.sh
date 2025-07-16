#!/bin/bash
# vim: fdl=2:

# bash $ABjo/wm/Xfce/terminal_startup.sh  # terminal launch
#  symlinked in
#   $OSAB/nodes-Bash/bashrc-generic
#   $OSAB/nodes-set/jo-1-Xfce.sh
#  for use in  Applications > Settings > Session and Startup > Alacritty

source $ABjo/wm/terminal/startup.sh
sleep 3
source $machBld/jo/tmux_begin.sh

