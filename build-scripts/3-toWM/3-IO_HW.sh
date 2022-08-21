#!/bin/bash
# vim: sw=2:

set -ev
trap read debug  # puts a read request after each executable line

# gAUR  is defined in $Bash/bashrc-console

# #=> 0 ATI DDX driver
# sudo pacman -S xf86-video-ati  # should probably reboot

#=> 0 Intel DDX driver
sudo pacman -S xf86-video-intel  # will need to reboot

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

# #=> 0 NVIDIA install
# sudo pacman -S nvidia  # will need to reboot

# #=> 0 NVIDIA beta install 0
# # required by nvidia-beta
# gAUR nvidia-utils-beta
# nvim PKGBUILD
# makepkg -sic

# #=> 0 NVIDIA beta install 1
# gAUR nvidia-beta
# nvim PKGBUILD
# makepkg -sic

# #=> 0 xorg-xkbprint
# # for keyboard maps
# gAUR xorg-xkbprint
# nvim -c "silent! /individual" PKGBUILD
# makepkg -sic

# #=> 0 xrandr
# sudo pacman -S xorg-xrandr

# #=> 1 intel-media-driver
# # for  VA-API
# sudo pacman -S intel-media-driver

#=> 1 libva-mesa-driver
# for  VA-API
sudo pacman -S libva-mesa-driver

# #=> 1 mesa-utils 0 install
# # for glxinfo, which may not work...
# sudo pacman -S mesa-utils

#=> 1 mesa-utils 0 install
sudo pacman -Rs mesa-utils

#=> 2 now reboot

