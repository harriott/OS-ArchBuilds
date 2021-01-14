#!/bin/bash
# vim: ft=sh.shfold:

# bash <thisfile>.sh

# rAUR  is defined in $ARCHBUILDS/jo/Bash/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 Pádraig Brady's key for coreutils
# # for advcp
# gpg --list-keys
# gpg --keyserver keys.gnupg.net --recv-keys DF6FD971306037D9

# #=> 0 pmount
# # for  nmount  plugin (which I don't use)
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/pmount.git
# cd pmount
# gvim PKGBUILD
# makepkg -sic

#=> 1 advcp
# for nnn -r
cd ~/Arch/AUR
rAUR advcp
git clone https://aur.archlinux.org/advcp.git
cd advcp
gvim PKGBUILD
# requires Pádraig Brady's key
makepkg -sic

# #=> 1 nnn plugins
# [[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
# curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

