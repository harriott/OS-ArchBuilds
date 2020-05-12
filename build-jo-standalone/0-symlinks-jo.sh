#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

# bash -x <thisfile>.sh
# can be run alone, but I source this from  jo/build.sh

# action='cp --remove-destination'
action='ln -sf'

. $ARCHBUILDS/userSymlinks/all.sh

$action $ARCHBUILDS/jo/Vim/gvimrc      ~/.gvimrc
$action $ARCHBUILDS/jo/Vim/init.vim    ~/.config/nvim/init.vim
$action $ARCHBUILDS/jo/Vim/vimrc       ~/.vimrc
$action $ARCHBUILDS/jo/bash_history.sh ~/Arch/bash_history.sh
$action $ITstack/gitconfig             ~/.gitconfig
$action $MACHINE/jo/xinitrc            ~/.xinitrc

