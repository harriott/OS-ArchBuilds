#!/bin/bash

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  rAUR  are defined in $Bash/bashrc-console

# #=> 8192eu 0 blacklist rtl8xxxu
# echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf

#=> 8192eu 1 remove blacklist
sudo rm /etc/modprobe.d/rtl8xxxu.conf

# #=> 8192eu-dkms 0 install
# # for  TP-Link TL-WN821N
# # needs  appmenu-gtk-module dkms linux-headers
# cd ~/Arch/AUR
# rm -fr 8192eu-dkms # (-f is needed for some weird files therein)
# git clone https://aur.archlinux.org/8192eu-dkms.git
# cd 8192eu-dkms
# gvim -c "silent! /Mange" PKGBUILD
# makepkg -sic
# #  (2/2) Install DKMS modules  takes a long time
# reboot

#=> 8192eu-dkms 1 remove
sudo pacman -Rs 8192eu-dkms
reboot

# #=> rtl8192eu
# # (didn't get  TL-WN821N  up)
# gdAUR rtl8192eu
# gvim PKGBUILD
# gvim -c "silent! /Mange" PKGBUILD
# makepkg -sic

#=> sshd 0 grab default sshd_config
sudo cp /etc/ssh/sshd_config $MACHINE/etc/defaults/kc1-sshd_config
sudo chown jo:jo $MACHINE/etc/defaults/kc1-sshd_config

#=> sshd 1 sshd_config
sudo cp $MACHINE/etc/sshd_config /etc/ssh/sshd_config

#=> systemd-resolved
sudo systemctl enable systemd-resolved.service --now
