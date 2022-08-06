#!/bin/bash

# bash $bs/33-softwares-for_nnn.sh

# gAUR  &  rAUR  are defined in $Bash/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 advcp 0 install
# out-of-date

# #==> 0 Pádraig Brady's key for coreutils
# # for advcp
# gpg -k
# gpg --keyserver keys.gnupg.net --recv-keys DF6FD971306037D9
# true

# #==> 1 advcp
# # for nnn -r
# gAUR advcp
# nvim -c "silent! /advcp" PKGBUILD
# # requires Pádraig Brady's key
# makepkg -sic  # takes a long time

# #=> 0 advcp 1 remove
# sudo pacman -Rs advcp
# rAUR advcp

# #=> 0 pmount
# # for  nmount  plugin (which I don't use)
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/pmount.git
# cd pmount
# nvim PKGBUILD
# makepkg -sic

#=> 1 advcpmv
# for nnn -r
gAUR advcpmv
nvim -c "silent! /jarun\/advcpmv" PKGBUILD
makepkg -sic  # the checks are long...
true

# #=> 2 go fast
# trap - debug  # turn off debug

# #=> 2 nnn plugins
# shopt -s dotglob
# [[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
# curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

