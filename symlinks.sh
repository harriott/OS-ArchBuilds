#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash -x <thisfile>.sh
#  for some reason, the sudo's need to be written in this file (instead of sudo bash...)

# To inspect symlinks:   find ~ -path '*/.virtualenvs' -prune -o -type l -ls

#=> logged in as jo, in X - Bash generics
# sort by last use of "~":  :sort /,*\~/

ln -sf $ARCHBUILDS/jo/Bash/bash_profile    ~/.bash_profile
ln -sf $MACHINE/jo/bashrc                  ~/.bashrc
ln -sf $ARCHBUILDS/jo/Bash/bashrc-console  ~/.bashrc-console
ln -sf $ARCHBUILDS/jo/Bash/bashrc-files    ~/.bashrc-files
ln -sf $ARCHBUILDS/jo/Vim/init.vim         ~/.config/nvim/init.vim
ln -sf $MACHINE/jo/xinitrc                 ~/.xinitrc
ln -sf $ARCHBUILDS/jo/bash_history.sh      ~/Arch/bash_history.sh

