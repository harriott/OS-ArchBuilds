#!/bin/bash

# bash <thisfile>.sh

# gAUR  &  rAUR  are defined in $Bash/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 advcp 0 install
# out-of-date

# #==> 0 Pádraig Brady's key for coreutils
# # for advcp
# gpg --list-keys
# gpg --keyserver keys.gnupg.net --recv-keys DF6FD971306037D9

# #==> 1 advcp
# # for nnn -r
# gAUR advcp
# gvim -c "silent! /advcp" PKGBUILD
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
# gvim PKGBUILD
# makepkg -sic

#=> 1 advcpmv
# for nnn -r
gAUR advcpmv
AURadvcpmv
gvim -c "silent! /jarun\/advcpmv" PKGBUILD
makepkg -sic
sudo cp /usr/bin/advcp /usr/local/bin/cpg
sudo cp /usr/bin/advmv /usr/local/bin/mvg

# #=> 2 nnn plugins
# [[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
# curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

