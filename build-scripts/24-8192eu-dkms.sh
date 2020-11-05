#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 8192eu-dkms 0 install
# for  TP-Link TL-WN821N
# needs  appmenu-gtk-module dkms linux-headers
cd ~/Arch/AUR
rm -fr 8192eu-dkms # (-f is needed for some weird files therein)
git clone https://aur.archlinux.org/8192eu-dkms.git
cd 8192eu-dkms
gvim PKGBUILD
makepkg -sic
reboot

# #=> 8192eu-dkms 1 remove
# sudo pacman -Rs 8192eu-dkms
# reboot

