#!/bin/bash
# vim: fdm=expr fdc=1 ft=sh.shfold:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 handlr-bin
cd ~/Arch/AUR
sudo rm -r handlr-bin
git clone https://aur.archlinux.org/handlr-bin.git
cd handlr-bin
xdg-open PKGBUILD &
makepkg -sic
cd ~

#=> 1 xdg-utils-handlr
cd ~/Arch/AUR
git clone https://aur.archlinux.org/xdg-utils-handlr.git
cd xdg-utils-handlr
gvim PKGBUILD
makepkg -sic
cd ~

# #=> 0 mimeo
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/mimeo.git
# cd mimeo
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> 1 xdg-utils-mimeo
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/xdg-utils-mimeo.git
# cd xdg-utils-mimeo
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

