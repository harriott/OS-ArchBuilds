#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

# bash -x <thisfile>.sh
# can be run alone, but I source this from  $Openbox/symlinks.sh

# To inspect symlinks:   find ~ -path '*/.virtualenvs' -prune -o -type l -ls

# sort these lists by last use of "~":  :sort /,*\~/

#=> logged in as user
# action='cp --remove-destination'
action='ln -sf'

$action $ARCHBUILDS/jo/Bash/bash_profile   ~/.bash_profile
$action $MACHINE/jo/bashrc                 ~/.bashrc
$action $ARCHBUILDS/jo/Bash/bashrc-console ~/.bashrc-console
$action $ARCHBUILDS/jo/Bash/bashrc-files   ~/.bashrc-files
$action $ARCHBUILDS/jo/Vim/init.vim        ~/.config/nvim/init.vim
$action $ITstack/gitconfig                 ~/.gitconfig
$action $ARCHBUILDS/jo/Vim/gvimrc          ~/.gvimrc
$action $ARCHBUILDS/jo/Vim/vimrc           ~/.vimrc
$action $ARCHBUILDS/jo/inputrc             ~/.inputrc

