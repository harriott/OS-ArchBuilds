#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 software - android-tools
# pacman -S android-tools

# #=> 0 softwares - documenting
# # Ghostscript
# pacman -S ghostscript

# # Pandoc
# sudo pacman -S pandoc
# mkdir ~/.pandoc/defaults

# # TeX Live
# sudo pacman -S texlive-most texlive-langchinese

#=> 0 softwares - file manage
# cdrtools
pacman -S cdrtools

# GVFS
pacman -S gvfs

# gvfs-mtp - for accessing phone memory
pacman -S gvfs-mtp

# nnn
pacman -S nnn

# PCManFM
pacman -S pcmanfm
# ...

#=> 0 softwares - multimedia
# Cmus
pacman -S cmus

# espeak-ng-espeak & termdown
pacman -S espeak-ng-espeak termdown

# gphoto2
pacman -S gphoto2

# iscan
# ...

# nomacs
# ...

# Pinta
pacman -S pinta

# PNMixer
# ...

# pulsemixer
sudo pacman -S pulsemixer

# qimgv-git
# ...

# SANE
# ...

#=> 0 softwares - networking
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

# Thunderbird
# ...

# Transmission
pacman -S transmission-qt

# youtube-dl
pacman -S youtube-dl

#=> 0 softwares - Openbox environment
# configure Openbox
pacman -S lxappearance-obconf obconf

# CopyQ
# ...

# Dunst
pacman -S dunst

# galculator
# ...

# Gmrun
pacman -S gmrun

# GnuPG for pinentry
# ...

# gsimplecal
pacman -S gsimplecal

# Openbox & tint2
pacman -S openbox tint2
# need to  nvim ~/.config/tint2/tint2rc $ARCHBUILDS/jo/tint2rc  and pull over my tweaks

# openbox/importScreenshot.sh
# ...

# perl-linux-desktopfiles
# ...

#=> 0 softwares - system
# Bluefish
# ...

# Conky
# ...

# fcron
pacman -S fcron

# figlet
# ...

# mimeo
# ...

# rebind Mouse middle key
# ...

# sysstat
pacman -S sysstat

# tmux
# ...

# urlview
# ...

# virtualenvwrapper
# ...

# xvt-perls
# ...

#=> 1 LibreOffice Configuration
true  # ensure that LibreOffice is not running
uc0=~/.config/libreoffice/4/user
    rm -r $uc0/config
    rm $uc0/registrymodifications.xcu
uc1=$ITstack/OpenOffice/LibreOffice/j9o-HPP-user
    cp -r $uc1/config $uc0/config
    cp $uc1/registrymodifications.xcu $uc0/registrymodifications.xcu

