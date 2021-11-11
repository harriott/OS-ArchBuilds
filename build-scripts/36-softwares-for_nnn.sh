#!/bin/bash

# bash <thisfile>.sh

# rAUR  is defined in $Bash/bashrc-console

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

# #=> 1 advcp
# # for nnn -r
# cd ~/Arch/AUR
# rAUR advcp
# trizen -G advcp
# cd advcp
# gvim -c "silent! /advcp" PKGBUILD
# # requires Pádraig Brady's key
# makepkg -sic  # takes a long time

#=> 1 nnn plugins
[[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

