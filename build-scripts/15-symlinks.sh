#!/bin/bash
# vim: fdl=1 sw=2:

# logged in as user

# #=> 0 Bash
# # sort this list by last use of "~":  :sort /,*\~/

# ln -sf $Bash/bash_profile              ~/.bash_profile
# ln -sf $MACHINE/jo/bashrc              ~/.bashrc
# ln -sf $Bash/bashrc-console            ~/.bashrc-console
# ln -sf $ARCHBUILDS/Bash/bashrc-generic ~/.bashrc-generic
# ln -sf $ARCHBUILDS/Bash/inputrc        ~/.inputrc
# ln -sf $MACHINE/jo/exports             ~/.exports
# ln -sf $MACHINE/jo/export-machine      ~/.export-machine
# ln -sf $ARCHBUILDS/jo/export-storage   ~/.export-storage
# ln -sf $ARCHBUILDS/jo/xbindkeysrc      ~/.xbindkeysrc
# ln -sf $MACHINE/jo/xinitrc             ~/.xinitrc  # which calls $MACHINE/jo/Xresources
# ln -sf $ARCHBUILDS/jo/bash_history.sh  ~/Arch/bash_history.sh

#=> 0 Git
# ln -sf $MACHINE/jo/gitconfig ~/.gitconfig  # points to $ITstack/gitconfig

# #=> 0 vims
ln -sf $MACHINE/jo/gvimrc ~/.gvimrc
ln -sf $ARCHBUILDS/jo/textEdit/Vim/vimrc ~/.vimrc

ln -sf $ARCHBUILDS/jo/textEdit/Vim/init.vim ~/.config/nvim/init.vim

#=> 1 visual check
# find ~ -mindepth 1 -maxdepth 3 -type l -ls

# #=> 1 if first build
# echo "now  reboot  (and don't allow startx!)"

