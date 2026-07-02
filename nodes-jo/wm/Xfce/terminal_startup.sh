#!/bin/bash
# vim: fdl=2:

# bash $ABjo/wm/Xfce/terminal_startup.sh  # terminal launch
#  symlinked in
#   $OSAB/nodes-Bash/bashrc-generic
#   $OSAB/nodes-set/jo-2-Xfce.sh
#  for use in  Applications > Settings > Session and Startup > Alacritty

source $ABjo/wm/terminal/startup.sh
sleep 3
if [[ $host =~ HPEB840G3 ]]; then
    source $OSAB/mb-HPEB840G3x/hi-jo/tmux_begin.sh
else
    source $machBld/jo/tmux_begin.sh
fi

