#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> as root
# android-tools
pacman -S android-tools

# cdrtools
pacman -S cdrtools

# Cmus
pacman -S cmus

# configure Openbox
pacman -S lxappearance-obconf obconf

# Dunst
pacman -S dunst

# espeak-ng-espeak & termdown
pacman -S espeak-ng-espeak termdown

# fcron
pacman -S fcron

# Ghostscript
pacman -S ghostscript

# Gmrun
pacman -S gmrun

# gphoto2
pacman -S gphoto2

# gsimplecal

# GVFS
pacman -S gvfs

# gvfs-mtp - for accessing phone memory
pacman -S gvfs-mtp

# iw
pacman -S iw

# iwd
pacman -S iwd
systemctl enable iwd.service
systemctl start iwd.service
systemctl status iwd.service

# lynx
pacman -S lynx

# mailcap
pacmatic -S mailcap

# nnn
pacman -S nnn

# nnn plugins
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

# Openbox & tint2
pacman -S openbox tint2
# need to  nvim ~/.config/tint2/tint2rc $ARCHBUILDS/jo/tint2rc  and pull over my tweaks

# Pandoc
sudo pacman -S pandoc

# PCManFM
pacman -S pcmanfm
# ...

# Pinta
pacman -S pinta

# pulsemixer
sudo pacman -S pulsemixer

# sysstat
pacman -S sysstat

# Transmission
pacman -S transmission-qt

# youtube-dl
pacman -S youtube-dl

#=> * Updates as root
pacman -Syu

#=> more
# Bluefish
# ...

# Conky
# ...

# CopyQ
# ...

# dragon-drag-and-drop
# ...

# figlet
# ...

# galculator
# ...

# GnuPG for pinentry
# ...

# iscan
# ...

# LibreOffice Fresh
# ...

# mimeo
# ...

# nomacs
# ...

# obmenu-generator
# ...

# openbox/importScreenshot.sh
# ...

# perl-linux-desktopfiles
# ...

# PNMixer
# ...

# rebind Mouse middle key
# ...

# SANE
# ...

# TeX Live
# ...

# Thunderbird
# ...

# tmux
# ...

# urlview
# ...

# qimgv-git
# ...

# virtualenvwrapper
# ...

# xvt-perls
# ...

#=> softwares - documenting
# Zathura
# ...

#=> openbox-themes
cd ~/Arch/AUR
git clone https://aur.archlinux.org/openbox-themes.git
cd openbox-themes
xdg-open PKGBUILD
makepkg -sic
# Openbox Loma theme tweak for active window
mkdir ~/.local/share/themes
cp -r /usr/share/themes/Loma ~/.local/share/themes/LomaJH
sed -i '/window.active.border.color:/ s/#000000/#FF8000/' ~/.local/share/themes/LomaJH/openbox-3/themerc
sed -i '/^border.width:/ s/1/2/' ~/.local/share/themes/LomaJH/openbox-3/themerc
cd ~

#=> after chromium
# Dropbox

