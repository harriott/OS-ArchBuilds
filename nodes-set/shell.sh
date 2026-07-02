#!/bin/bash
# vim: fdl=1 sw=2:

# source $OSAB/nodes-set/shell.sh
# for both  root  and  user

#=> shell
# sort these lists by last use of "~":  :sort /,*\~/

ln -sf $machBld/Bash_start                ~/.start
  ln -sf $OSAB/nodes-Bash/export-Arch     ~/.export-Arch
ln -sf $OSAB/nodes-Bash/bashrc-generic    ~/.bashrc-generic
ln -sf $OSL/nodes/GNUReadline-inputrc     ~/.inputrc
ln -sf $OSL/nodes/terminal-tmux/tmux.conf ~/.tmux.conf

eza -la ~/.bash* ~/.ex* ~/.inputrc ~/.start ~/.tmux.conf

