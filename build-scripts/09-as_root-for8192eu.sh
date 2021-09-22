#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 1 softwares - appmenu-gtk-module 0 install
# for *8192eu*
pacman -S appmenu-gtk-module

# #=> 1 softwares - appmenu-gtk-module 1 uninstall
# pacman -Rs appmenu-gtk-module
# true

#=> 1 softwares - dkms 0 install
# for *8192eu*
pacman -S dkms
reboot

#=> 1 softwares - dkms 0 install
# this caused  $userresources  not to be respected in  ~/.xinitrc  and poor fonts in  gVim
pacman -Rs dkms
reboot

