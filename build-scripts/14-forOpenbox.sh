#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> dragon-drag-and-drop
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/dragon-drag-and-drop.git
# cd dragon-drag-and-drop
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> LibreOffice Fresh
# sudo pacman -S libreoffice-fresh-en-gb
# libreoffice  # first-run of LibreOffice - close it

#=> nnn plugins
[[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

# #=> openbox-themes
# cd ~/Arch/AUR
# git clone https://aur.archlinux.org/openbox-themes.git
# cd openbox-themes
# xdg-open PKGBUILD
# makepkg -sic
# # Openbox Loma theme tweak for active window
# mkdir ~/.local/share/themes
# cp -r /usr/share/themes/Loma ~/.local/share/themes/LomaJH
# sed -i '/window.active.border.color:/ s/#000000/#FF8000/' ~/.local/share/themes/LomaJH/openbox-3/themerc
# sed -i '/^border.width:/ s/1/2/' ~/.local/share/themes/LomaJH/openbox-3/themerc
# cd ~

# #=> qimgv-git
# cd ~/Arch/AUR
# sudo rm -r qimgv-git
# git clone https://aur.archlinux.org/qimgv-git.git
# cd qimgv-git
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> qt5-styleplugins
# cd ~/Arch/AUR
# sudo rm -r qt5-styleplugins
# git clone https://aur.archlinux.org/qt5-styleplugins.git
# cd qt5-styleplugins
# xdg-open PKGBUILD
# makepkg -sic
# cd ~

# #=> qpdfview
# sudo pacman -S qpdfview

# #=> qt5ct
# sudo pacman -S qt5ct
# grep QT_QPA_PLATFORMTHEME=qt5ct ~/.xinitrc
# # now need to  Menu > Settings > Qt5 Settings > Style > cleanlooks
# #  sed -i s/fusion/cleanlooks/' ~/.config/qt5ct/qt5ct.conf
# true

# #=> sxiv
# sudo pacman -S sxiv

# #=> Zathura
# sudo pacman -S zathura-pdf-mupdf
# ln -fs $ARCHBUILDS/jo/Openbox/zathurarc ~/.config/zathura/zathurarc

