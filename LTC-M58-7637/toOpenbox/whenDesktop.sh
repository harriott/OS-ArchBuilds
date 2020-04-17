#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

# Updates
sudo pacman -Syu

# obmenu-generator
# ...

# PCManFM
pacman -S pcmanfm
# ...

# perl-linux-desktopfiles
# ...

# mailcap
sudo pacmatic -S mailcap

# GVFS
sudo pacman -S gvfs

# mimeo
# ...

# install gVim
cp -f gvimrc ~/.gvimrc
cp -f vimrc ~/.vimrc

# openbox/importScreenshot.sh
# ...

# CopyQ
# ...

# Dropbox
# after installing a browser

# PNMixer
# ...

# LibreOffice Fresh
# ...

# Zathura
# ...

# Conky
# ...

# galculator
# ...

# Pinta
sudo pacman -S pinta

# qimgv-git
# ...

# TeX Live
# ...

# SANE
# ...

# rebind Mouse middle key
# ...

# iscan
# ...

# Bluefish
# ...

# nomacs
# ...

# virtualenvwrapper
# ...

# Thunderbird
# ...

# GnuPG for pinentry
# ...

# tmux
# ...

# Gmrun
sudo pacman -S gmrun

# xvt-perls
# ...

# Transmission
# ...

# Google Widevine for chromium
# ...

# gphoto2
sudo pacman -S gphoto2

# Font Squirrel fonts
# ...

# gvfs-mtp - for accessing phone memory
sudo pacman -S gvfs-mtp

