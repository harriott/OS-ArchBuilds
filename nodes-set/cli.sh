#!/bin/bash
# vim: fdl=1 sw=2:

# source $ABno-set/cli.sh
# for both  root  and  user

#=> broot
b=~/.config/broot; [ -d $b ] || mkdir $b
ln -sf $ABjo/broot/conf.hjson  ~/.config/broot/conf.hjson
ln -sf $ABjo/broot/verbs.hjson ~/.config/broot/verbs.hjson

#=> shell
# sort these lists by last use of "~":  :sort /,*\~/

ln -sf $ABnm/Bash_start                   ~/.start
  ln -sf $ABno/Bash/export-Arch           ~/.export-Arch
ln -sf $ABno/Bash/bashrc-generic          ~/.bashrc-generic
ln -sf $OSL/nodes/GNUReadline-inputrc     ~/.inputrc
ln -sf $OSL/nodes/terminal-tmux/tmux.conf ~/.tmux.conf

eza -la ~/.bashrc-generic ~/.export-Arch ~/.inputrc ~/.start ~/.tmux.conf

