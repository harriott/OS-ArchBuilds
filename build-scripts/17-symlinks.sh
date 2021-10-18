#!/bin/bash
# vim: fdl=1 sw=2:

# logged in as user

#=> 0 before ~/.export-storage defined
ARCHBUILDS=$HOME/ArchBuilds
  Bash=$ARCHBUILDS/jo/Bash
  MACHINE=$ARCHBUILDS/$(uname -n)
    echo '$MACHINE' "= $MACHINE"

#=> 1 Bash
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $Bash/bash_profile              ~/.bash_profile
ln -sf $MACHINE/jo/bashrc              ~/.bashrc
ln -sf $Bash/bashrc-console            ~/.bashrc-console
ln -sf $ARCHBUILDS/Bash/bashrc-generic ~/.bashrc-generic
ln -sf $ARCHBUILDS/Bash/inputrc        ~/.inputrc
ln -sf $MACHINE/jo/export-machine      ~/.export-machine
ln -sf $ARCHBUILDS/jo/export-storage   ~/.export-storage
ln -sf $ARCHBUILDS/jo/xinitrc          ~/.xinitrc  # which calls $MACHINE/jo/Xresources
ln -sf $ARCHBUILDS/jo/bash_history.sh  ~/Arch/bash_history.sh

# #=> 0 Bash - mouse wheel
# ln -sf $ARCHBUILDS/jo/xbindkeysrc ~/.xbindkeysrc

#=> 1 Git
ln -sf $MACHINE/jo/gitconfig ~/.gitconfig  # points to $ITstack/gitconfig

#=> 1 vims
ln -sf $MACHINE/jo/gvimrc ~/.gvimrc
ln -sf $ARCHBUILDS/jo/textEdit/Vim/vimrc ~/.vimrc

[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
ln -sf $ARCHBUILDS/jo/textEdit/Vim/init.vim ~/.config/nvim/init.vim

#=> 2 visual check
find ~ -mindepth 1 -maxdepth 3 -type l -ls

#=> 2 if first build
echo "now  relogin  (and don't allow startx!)"

