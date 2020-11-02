#!/bin/bash
# vim: fdm=expr fdc=1 ft=sh.shfold:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 Pádraig Brady's key for coreutils
# # for advcp
# gpg --list-keys
# gpg --keyserver keys.gnupg.net --recv-keys DF6FD971306037D9

#=> 1 advcp
# for nnn -r
cd ~/Arch/AUR
sudo rm -r advcp
git clone https://aur.archlinux.org/advcp.git
cd advcp
gvim PKGBUILD
# requires Pádraig Brady's key
makepkg -sic

#=> 1 nnn plugins
[[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

