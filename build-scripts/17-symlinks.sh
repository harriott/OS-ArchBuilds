#!/bin/bash
# vim: fdl=1 sw=2:

# logged in as user

#=> 0 ARCHBUILDS
. 05-exports.sh

#=> 1 Bash
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $Bash/bash_profile                   ~/.bash_profile
ln -sf $Bash/bashrc                         ~/.bashrc
ln -sf $Bash/bashrc-console                 ~/.bashrc-console
ln -sf $ARCHBUILDS/Bash/bashrc-generic      ~/.bashrc-generic
ln -sf $ARCHBUILDS/Bash/GNUReadline-inputrc ~/.inputrc
ln -sf $MACHINE/export-machine              ~/.export-machine
ln -sf $ARCHBUILDS/Bash/export-storage      ~/.export-storage
ln -sf $Bash/export-jo                      ~/.export-jo
ln -sf $Bash/bash_history.sh                ~/Arch/bash_history.sh

#=> 1 Git
ln -sf $MACHINE/jo/gitconfig ~/.gitconfig  # points to $ITstack/gitconfig

#=> 1 vims
ln -sf $MACHINE/jo/gvimrc ~/.gvimrc
ln -sf $ARCHBUILDS/jo/textEdit/Vim/vimrc ~/.vimrc

[ -d ~/.config/nvim ] || mkdir -p ~/.config/nvim
ln -sf $ARCHBUILDS/jo/textEdit/Vim/init.vim ~/.config/nvim/init.vim

#=> 1 X

ln -sf $ARCHBUILDS/jo/xbindkeysrc ~/.xbindkeysrc  # mouse wheel
ln -sf $ARCHBUILDS/jo/xinitrc     ~/.xinitrc  # calls $MACHINE/jo/Xresources
ln -sf $Openbox/Xresources/Xresources ~/.Xresources
ln -sf $Openbox/Xresources/colorschemes/LukeSmith-gruvbox ~/.Xresources-LukeSmith-gruvbox

#=> 2 visual check
find ~ -mindepth 1 -maxdepth 3 -type l -ls

# #=> 2 if first build
# echo "now  relogin  (and don't allow startx!)"

