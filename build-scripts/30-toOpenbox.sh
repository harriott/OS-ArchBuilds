#!/bin/bash

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# rAUR  is defined in $Bash/bashrc-console

# #=> 0 ATI install
# sudo pacman -S xf86-video-ati  # should probably reboot

# #=> 0 for Dunst
# mkdir -p ~/.config/dunst

# #=> 0 generate 00-keyboard.conf
# sudo localectl --no-convert set-x11-keymap gb pc105  # will need to restart X to get GB key maps

# #=> 0 Intel video driver
# # mesa should already be there
# sudo pacman -S xf86-video-intel  # will need to reboot

# #=> 0 Nouveau install
# # for NVIDIA (mesa might've been there already)
# sudo pacman -S mesa xf86-video-nouveau  # will need to reboot

# #=> 0 Nouveau remove
# sudo pacman -Rs xf86-video-nouveau  # will need to reboot

# #=> 0 NVIDIA install
# sudo pacman -S nvidia  # will need to reboot

# #=> 0 NVIDIA beta install 0
# # required by nvidia-beta
# cd ~/Arch/AUR
# rAUR nvidia-utils-beta
# git clone https://aur.archlinux.org/nvidia-utils-beta.git
# cd nvidia-utils-beta
# nvim PKGBUILD
# makepkg -sic

# #=> 0 NVIDIA beta install 1
# cd ~/Arch/AUR
# rAUR nvidia-beta
# git clone https://aur.archlinux.org/nvidia-beta.git
# cd nvidia-beta
# nvim PKGBUILD
# makepkg -sic

# #=> 0 Openbox configuration folders
# mkdir ~/.config/openbox
# mkdir ~/.config/obmenu-generator

# #=> 0 openbox-themes
# cd ~/Arch/AUR
# rAUR openbox-themes
# trizen -G openbox-themes
# cd openbox-themes
# nvim PKGBUILD
# nvim -c "silent! /http:\/\/ftp.debian.org\/debian\/pool\/main\/o\/openbox-themes\/openbox-themes" PKGBUILD
# makepkg -sic

# #=> 0 for urxvt
# mkdir -p ~/.urxvt

# #=> 0 xorg-xkbprint
# # for keyboard maps
# cd ~/Arch/AUR
# rAUR xorg-xkbprint
# trizen -G xorg-xkbprint
# cd xorg-xkbprint
# nvim -c "silent! /individual" PKGBUILD
# makepkg -sic

# #=> 0 xrandr
# sudo pacman -S xorg-xrandr

#=> 1 importScreenshot.sh
cp $Openbox/openbox/rc/importScreenshot.sh ~/.config/openbox/importScreenshot.sh

#=> 1 intel-media-driver
# for  VA-API
sudo pacman -S intel-media-driver

# #=> 1 libva-mesa-driver
# # for  VA-API
# sudo pacman -S libva-mesa-driver

# #=> 1 Openbox Loma theme tweak for active window
# mkdir ~/.local/share/themes
# cp -r /usr/share/themes/Loma ~/.local/share/themes/LomaJH
# sed -i '/window.active.border.color:/ s/#000000/#FF8000/' ~/.local/share/themes/LomaJH/openbox-3/themerc
# sed -i '/^border.width:/ s/1/2/' ~/.local/share/themes/LomaJH/openbox-3/themerc

#=> 1 perl-data-dump
# for  obmenu-generator
sudo pacman -S perl-data-dump

#=> 1 perl-linux-desktopfiles
# for  obmenu-generator
cd ~/Arch/AUR
trizen -G obmenu-generator
cd perl-linux-desktopfiles
nvim PKGBUILD
makepkg -sic

#=> 2 obmenu-generator
cd ~/Arch/AUR
rAUR obmenu-generator
trizen -G obmenu-generator
cd obmenu-generator
nvim -c "silent! /trizen" PKGBUILD
makepkg -sic
nvim -geom 200 -O /etc/xdg/obmenu-generator/schema.pl $Openbox/openbox/schema.pl

