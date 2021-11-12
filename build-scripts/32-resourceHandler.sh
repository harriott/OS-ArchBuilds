#!/bin/bash

# bash 32-resourceHandler.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> handlr

# #==> 0 handlr-bin
# gAUR handlr-bin
# nvim -c "silent! /handlr" PKGBUILD
# makepkg -sic
# cd ~

#==> 1 remove xdg-utils
# because in conflict with xdg-utils-handlr
sudo pacman -Rs xdg-utils

#==> 2 xdg-utils-handlr
gAUR xdg-utils-handlr
nvim -c "silent! /handlr" PKGBUILD
makepkg -sic
cd ~

# #=> mimeo

# #==> 0 mimeo
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/mimeo.git
# cd mimeo
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #==> 1 xdg-utils-mimeo
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/xdg-utils-mimeo.git
# cd xdg-utils-mimeo
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

