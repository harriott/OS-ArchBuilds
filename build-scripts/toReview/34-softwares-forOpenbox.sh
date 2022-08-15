#!/bin/bash

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gAUR  gdAUR  rAUR  are defined in $Bash/bashrc-console

# #=> 0 tint2rc
# nvim -O /etc/xdg/tint2/tint2rc ~/.config/tint2/tint2rc $Openbox/tint2rc -c "windo difft"
# killall -SIGUSR1 tint2  # reloads tint2rc
# # - should also be done if  tint2  has been updated

# #=> 1 audio 0 ALSA - PNMixer
# gAUR pnmixer
# gvim -c "silent! /pnmixer-v" PKGBUILD
# makepkg -sic
# # now  Multimedia > PNMixer > Preferences > View > Draw Volume Meter on Tray Icon
# true

#=> 1 audio 1 PulseAudio - pavucontrol
pacman -S pavucontrol  # for pnmixer
sed -i '/VolumeControlCommand/ s/=.*/=pavucontrol/' /home/jo/.config/pnmixer/config

# #=> 1 CUPS service
# sudo pacman -S cups
# sudo systemctl enable cups.service --now

# #=> 1 dragon-drag-and-drop
# rAUR dragon-drag-and-drop
# gvim -c "silent! /dragon" PKGBUILD
# makepkg -sic

# #=> 1 feh
# sudo pacman -S feh

# #=> 1 mpv
# sudo pacman -S mpv

# #=> 1 nomacs
# sudo pacman -S nomacs
# # now run it for  English  then  Close and run it again for  Ctrl+Shift+p > Close on ESC
# true

# #=> 1 PCManFM
# sudo pacman -S pcmanfm
# handlr set inode/directory pcmanfm.desktop
# # now run it to set some of my preferences:  Edit > Preferences >
# #  General > Confirm before moving files into "trash can"   off-ticked
# #  Volume Management > Show available options  off-ticked
# #  Advanced > Terminal > urxvt
# true

# #=> 1 Pinta
# sudo pacman -S pinta

#=> 1 qt5-styleplugins
# for qt5ct - allows fix of narrow fonts in XnViewMP
gAUR qt5-styleplugins
nvim -c "silent! /qtstyleplugins" PKGBUILD
makepkg -sic  # takes a long time

# #=> 1 qpdfview
# sudo pacman -S qpdfview

# #=> 1 qt5ct
# # - Qt5 theme - allows better tab differentiation in CopyQ
# sudo pacman -S qt5ct
# #  QT_QPA_PLATFORMTHEME=qt5ct  is set in  ~/.xinitrc

# #=> 1 SANE
# sudo pacman -S sane

# #=> 1 snixembed-git
# # to get Dropbox icon down into tint2
# gdAUR snixembed-git
# gvim -c "silent! /https:\/\/git.sr.ht\/~steef\/snixembed" PKGBUILD
# makepkg -sic  # takes a while

# #=> 1 sxiv
# sudo pacman -S sxiv

# #=> 1 urlview
# # creates a numbered list of url's in a resource
# gAUR urlview
# gvim PKGBUILD
# makepkg -sic

#=> 1 Zathura
sudo pacman -S zathura-pdf-mupdf
# zathurarc  will be symlinked in  38-symlinks-softwares.sh

