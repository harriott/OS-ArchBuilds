#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold sw=2:

# logged in as user

# #=> 0 Bash
# # sort this list by last use of "~":  :sort /,*\~/

# ln -sf $Bash/bash_profile             ~/.bash_profile
# ln -sf $MACHINE/jo/bashrc             ~/.bashrc
# ln -sf $ARCHBUILDS/Bash/inputrc       ~/.inputrc
# ln -sf $ARCHBUILDS/jo/xbindkeysrc     ~/.xbindkeysrc
# ln -sf $MACHINE/jo/xinitrc            ~/.xinitrc  # which calls $MACHINE/jo/Xresources
# ln -sf $ARCHBUILDS/jo/bash_history.sh ~/Arch/bash_history.sh

# find ~ -mindepth 1 -maxdepth 1 -type l -ls  # visual check

# #=> 0 Git
# ln -sf $MACHINE/jo/gitconfig ~/.gitconfig  # points to $ITstack/gitconfig

# find ~ -mindepth 1 -maxdepth 1 -type l -ls  # visual check

#=> 0 vims
ln -sf $ARCHBUILDS/jo/Vim/gvimrc ~/.gvimrc
ln -sf $ARCHBUILDS/jo/Vim/vimrc  ~/.vimrc

ln -sf $ARCHBUILDS/jo/Vim/init.vim ~/.config/nvim/init.vim

find ~ -mindepth 1 -maxdepth 3 -type l -ls  # visual check

# #=> 1 if first build
# echo "now  reboot  (and don't allow startx!)"

