#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

# bash -x <thisfile>.sh

# sort these lists by last use of "~":  :sort /,*\~/

#=> for jo - get going

ln -sf $ARCHBUILDS/jo/Vim/init.vim    ~/.config/nvim/init.vim
ln -sf $ITstack/gitconfig             ~/.gitconfig
ln -sf $ARCHBUILDS/jo/Vim/gvimrc      ~/.gvimrc
ln -sf $ARCHBUILDS/jo/Vim/vimrc       ~/.vimrc
ln -sf $MACHINE/jo/xinitrc            ~/.xinitrc
ln -sf $ARCHBUILDS/jo/bash_history.sh ~/Arch/bash_history.sh

