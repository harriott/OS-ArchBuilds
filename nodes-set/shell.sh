#!/bin/bash
# vim: fdl=1 sw=2:

# source $OSAB/nodes-set/shell.sh

#=> shell
# sort these lists by last use of "~":  :sort /,*\~/

if   [[ $host =~ HPEB840G37 ]]; then
  ln -sf $OSAB/mb-HPEB840G3x/7/Bash_start    ~/.start
elif [[ $host =~ HPEB840G38 ]]; then
  ln -sf $OSAB/mb-HPEB840G3x/8/Bash_start    ~/.start
else
  ln -sf $machBld/Bash_start                 ~/.start
fi
  ln -sf $OSAB/nodes-Bash/export-Arch        ~/.export-Arch
ln -sf $OSAB/nodes-Bash/bashrc-generic       ~/.bashrc-generic
ln -sf $OSL/nodes/GNUReadline-inputrc        ~/.inputrc
ln -sf $OSL/nodes/terminal-tmux/tmux.conf    ~/.tmux.conf

