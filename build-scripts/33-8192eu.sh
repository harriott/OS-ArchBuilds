#!/bin/bash
# vim: fdl=1:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 8192eu-dkms 0 install
# # for  TP-Link TL-WN821N
# # needs  appmenu-gtk-module dkms linux-headers
# cd ~/Arch/AUR
# rm -fr 8192eu-dkms # (-f is needed for some weird files therein)
# git clone https://aur.archlinux.org/8192eu-dkms.git
# cd 8192eu-dkms
# gvim PKGBUILD
# makepkg -sic
# #  (2/2) Install DKMS modules  takes a long time
# reboot

#=> 8192eu-dkms 1 remove
sudo pacman -Rs 8192eu-dkms
reboot

# #=> rtl8192eu
# # (didn't get  TL-WN821N  up)
# cd ~/Arch/AUR
# rAUR rtl8192eu
# git clone https://aur.archlinux.org/rtl8192eu.git
# cd rtl8192eu
# gvim PKGBUILD
# makepkg -sic

