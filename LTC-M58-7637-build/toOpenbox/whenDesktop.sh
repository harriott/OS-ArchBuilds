#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

# Updates
sudo pacman -Syu

# auracle-git
# ...

# perl-linux-desktopfiles
# ...

# obmenu-generator
# ...

# PCManFM
pacman -S pcmanfm
# ...

# mailcap - for some reason
sudo pacmatic -S mailcap

# GVFS
sudo pacman -S gvfs

# Fangfrisch
# ...

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

# ShellCheck (for xVim)
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

# flake8
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

# LastPass CLI
sudo pacman -S lastpass-cli

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

# broot
# ...

# dust
# ...

# moar
# ...

