#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash -x <thisfile>.sh
#  for some reason, the sudo's need to be written in this file (instead of sudo bash...)

# To inspect symlinks:   find ~ -path '*/.virtualenvs' -prune -o -type l -ls

#=> logged in as jo, in X - Bash generics
# action='ln -sf'
action='cp --remove-destination'

# sort by last use of "~":  :sort /,*\~/

$action $ARCHBUILDS/jo/Bash/bash_profile    ~/.bash_profile
$action $MACHINE/jo/bashrc                  ~/.bashrc
$action $ARCHBUILDS/jo/Bash/bashrc-console  ~/.bashrc-console
$action $ARCHBUILDS/jo/Bash/bashrc-files    ~/.bashrc-files
$action $ARCHBUILDS/jo/Vim/init.vim         ~/.config/nvim/init.vim
$action $ARCHBUILDS/jo/inputrc              ~/.inputrc
$action $MACHINE/jo/xinitrc                 ~/.xinitrc
$action $ARCHBUILDS/jo/bash_history.sh      ~/Arch/bash_history.sh

