#!/bin/bash
# vim: sw=2:

# bash $OSAB/bs-3-toWM-0/3-IO_HW.sh

set -v
trap read debug  # puts a read request after each executable line

# gAUR  is defined in  $AjB/bashrc-console

# #=> 0 ATI DDX driver
# sudo pacman -S xf86-video-ati  # should probably reboot

# #=> 0 Intel DDX driver
# sudo pacman -S xf86-video-intel  # will need to reboot

# #=> 0 generate 00-keyboard.conf
# sudo localectl --no-convert set-x11-keymap gb pc105  # will need to restart X to get GB key maps

# #=> 0 mictray
# gAUR mictray
# nvim -c "silent! /Junker" PKGBUILD
# makepkg -sic

# #=> 0 Nouveau install
# # for NVIDIA (mesa might've been there already)
# sudo pacman -S mesa xf86-video-nouveau  # will need to reboot

# #=> 0 Nouveau remove
# sudo pacman -Rs xf86-video-nouveau  # will need to reboot

# #=> 0 nvidia install
# sudo pacman -S nvidia  # will need to reboot

#=> 0 nvidia-470xx-utils install
# brings in  nvidia-470xx-dkms
gAUR nvidia-470xx-utils
nvim -c "silent! /nvidia-470xx-" PKGBUILD
makepkg -sic  # installation takes time
true

#=> 0 nvidia-settings
sudo pacman -S nvidia-settings

#=> 0 nvidia-utils install 0
sudo pacman -S nvidia-utils

# #=> 0 nvidia-beta 0 nvidia-utils-beta install
# # required by nvidia-beta
# gAUR nvidia-utils-beta
# nvim PKGBUILD
# makepkg -sic

# #=> 0 nvidia-beta 1 install
# gAUR nvidia-beta
# nvim PKGBUILD
# makepkg -sic

# #=> 0 xorg-xkbprint
# # for keyboard maps
# gAUR xorg-xkbprint
# nvim -c "silent! /individual" PKGBUILD
# makepkg -sic

#=> 0 xorg-xvidtune
sudo pacman -S xorg-xvidtune

# #=> 0 xrandr
# sudo pacman -S xorg-xrandr

# #=> 1 intel-media-driver
# # for  VA-API
# sudo pacman -S intel-media-driver

# #=> 1 libva-mesa-driver
# # for  VA-API  on  ATI Radeon HD 4870
# sudo pacman -S libva-mesa-driver

# #=> 1 mesa-utils 0 install
# # for glxinfo, which may not work...
# sudo pacman -S mesa-utils

# #=> 1 mesa-utils 0 remove
# sudo pacman -Rs mesa-utils

# #=> 2 now reboot

