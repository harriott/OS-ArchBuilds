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
sed -i 's/b41f03d01c6e51db2ab491758bee594034cc02a815c87f4c19a4fafdfdfc9bd6/93a222e380d5f318f387e79b48b5b7647cb23658f4bee3e06c73c81120a6e223/' PKGBUILD
gvim -c "silent! /jarun\/advcpmv" PKGBUILD
makepkg -sic  # the checks are long...
sudo cp /usr/bin/advcp /usr/local/bin/cpg  ## cpg --help
sudo cp /usr/bin/advmv /usr/local/bin/mvg  ## mpg --help

#=> 2 nnn plugins
[[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

