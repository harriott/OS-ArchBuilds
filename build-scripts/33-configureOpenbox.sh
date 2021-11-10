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
# [[ $DISPLAY ]] && xdg-open PKGBUILD # or check it online
# makepkg -sic

# #=> 0 NVIDIA beta install 1
# cd ~/Arch/AUR
# rAUR nvidia-beta
# git clone https://aur.archlinux.org/nvidia-beta.git
# cd nvidia-beta
# [[ $DISPLAY ]] && xdg-open PKGBUILD # or check it online
# makepkg -sic

# #=> 0 Openbox configuration folders
# mkdir ~/.config/openbox
# mkdir ~/.config/obmenu-generator

# #=> 0 openbox-themes
# cd ~/Arch/AUR
# rAUR openbox-themes
# git clone https://aur.archlinux.org/openbox-themes.git
# cd openbox-themes
# [[ $DISPLAY ]] && xdg-open PKGBUILD # or check it online
# makepkg -sic

# Openbox Loma theme tweak for active window
# mkdir ~/.local/share/themes
# cp -r /usr/share/themes/Loma ~/.local/share/themes/LomaJH
# sed -i '/window.active.border.color:/ s/#000000/#FF8000/' ~/.local/share/themes/LomaJH/openbox-3/themerc
# sed -i '/^border.width:/ s/1/2/' ~/.local/share/themes/LomaJH/openbox-3/themerc

# #=> 0 for urxvt
# mkdir -p ~/.urxvt

# #=> 0 xorg-xkbprint
# cd ~/Arch/AUR
# rAUR xorg-xkbprint
# git clone https://aur.archlinux.org/xorg-xkbprint.git
# cd xorg-xkbprint
# [[ $DISPLAY ]] && xdg-open PKGBUILD # or check it online
# makepkg -sic

# #=> 0 xrandr
# sudo pacman -S xorg-xrandr

# #=> 1 importScreenshot.sh
# cp $ARCHBUILDS/jo/Openbox/openbox/importScreenshot.sh ~/.config/openbox/importScreenshot.sh
# chmod 755 ~/.config/openbox/importScreenshot.sh

# #=> 1 libva-mesa-driver
# # for  VA-API
# sudo pacman -S libva-mesa-driver

# #=> 1 perl-data-dump
# # for  obmenu-generator
# sudo pacman -S perl-data-dump

# #=> 1 perl-linux-desktopfiles
# # for  obmenu-generator
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/perl-linux-desktopfiles.git
# cd perl-linux-desktopfiles
# [[ $DISPLAY ]] && xdg-open PKGBUILD # or check it online
# makepkg -sic

#=> 2 obmenu-generator
cd ~/Arch/AUR
rAUR obmenu-generator
git clone https://aur.archlinux.org/obmenu-generator.git
cd obmenu-generator
[[ $DISPLAY ]] && gvim -c "silent! /trizen" PKGBUILD # or check it online
makepkg -sic
if [[ -d $DROPBOX ]]; then # assume that my Dropbox is up
    gvim -geom 200 -O /etc/xdg/obmenu-generator/schema.pl $Openbox/openbox/schema.pl
else
    cp /etc/xdg/obmenu-generator/schema.pl /mm/k8v-schema.pl # diff against this later
fi

