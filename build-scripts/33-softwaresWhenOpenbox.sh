#!/bin/bash

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# rAUR  is defined in $ARCHBUILDS/jo/Bash/bashrc-console

#=> 0 tint2rc
gvim -geometry 200x55 -O ~/.config/tint2/tint2rc $Openbox/tint2rc -c "windo difft"  # should also be done if  tint2  has been updated
killall -SIGUSR1 tint2  # reloads tint2rc

# #=> 1 CUPS service
# sudo pacman -S cups
# sudo systemctl enable cups.service --now

# #=> 1 dragon-drag-and-drop
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/dragon-drag-and-drop.git
# cd dragon-drag-and-drop
# gvim PKGBUILD
# makepkg -sic
# cd ~

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
# #  Advanced > Terminal > urxvt
# #  General > Confirm before moving files into "trash can"   off-ticked
# #  Volume Management > Show available options  off-ticked
# true

# #=> 1 Pinta
# sudo pacman -S pinta

# #=> 1 PNMixer
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/pnmixer.git
# cd pnmixer
# gvim PKGBUILD
# makepkg -sic
# cd ~
# # now  Multimedia > PNMixer > Preferences > View > Draw Volume Meter on Tray Icon
# true

# #=> 1 qt5-styleplugins
# # for qt5ct - allows fix of narrow fonts in XnViewMP
# cd ~/Arch/AUR
# rAUR qt5-styleplugins
# git clone https://aur.archlinux.org/qt5-styleplugins.git
# cd qt5-styleplugins
# gvim PKGBUILD
# makepkg -sic
# cd ~

# #=> 1 qpdfview
# sudo pacman -S qpdfview

# #=> 1 qt5ct
# # - Qt5 theme - allows better tab differentiation in CopyQ
# sudo pacman -S qt5ct
# #  QT_QPA_PLATFORMTHEME=qt5ct  is set in  ~/.xinitrc
# sed -i 's/fusion/cleanlooks/' ~/.config/qt5ct/qt5ct.conf
# #  = Menu > Settings > Qt5 Settings > Style > cleanlooks

# #=> 1 SANE
# sudo pacman -S sane

# #=> 1 sxiv
# sudo pacman -S sxiv

# #=> 1 urlview
# # creates a numbered list of url's in a resource
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/urlview.git
# cd urlview
# gvim PKGBUILD
# makepkg -sic
# cd ~

# #=> 1 Zathura
# sudo pacman -S zathura-pdf-mupdf
# mkdir ~/.config/zathura

