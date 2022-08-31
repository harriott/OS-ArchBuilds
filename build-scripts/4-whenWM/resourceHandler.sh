#!/bin/bash

# bash $bSc/4-whenWM/resourceHandler.sh

# gAUR  is defined in $Bash/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> handlr 0 handlr-bin
# gAUR handlr-bin
# nvim -c "silent! /handlr" PKGBUILD
# makepkg -sic
# cd ~

# #=> handlr 1 xdg-utils-handlr
# # sudo pacman -Rs xdg-utils  can't be done as needed by  chromium  &  qt5-base
# gAUR xdg-utils-handlr
# nvim -c "silent! /handlr" PKGBUILD
# makepkg -sic  # don't forget to allow Removal of xdg-utils
# cd ~

#=> handlr 2 set default handlers
handlr set .conf gvim.desktop
handlr set .jpg org.nomacs.ImageLounge.desktop
handlr set .kdbx org.keepassxc.KeePassXC.desktop
handlr set .log gvim.desktop
handlr set .lua gvim.desktop
handlr set .md gvim.desktop
handlr set .mp3 mpv.desktop
handlr set .png org.nomacs.ImageLounge.desktop
handlr set .pl gvim.desktop
handlr set .mkv mpv.desktop
handlr set .mp4 mpv.desktop
handlr set .py gvim.desktop
handlr set .sh gvim.desktop
handlr set .tex gvim.desktop
handlr set .tiff feh.desktop
handlr set .txt gvim.desktop
handlr set .xml gvim.desktop
# r /usr/share/applications

# #=> mimeo 0 mimeo 0 install
# gAUR mimeo
# nvim -c "silent! /https:\/\/xyne.dev\/projects\/mimeo" PKGBUILD
# makepkg -sic

# #=> mimeo 0 mimeo 1 remove
# sudo pacman -Rs mimeo

# #=> mimeo 1 xdg-utils-mimeo
# gAUR xdg-utils-mimeo
# nvim -c "silent! /freedesktop" PKGBUILD
# makepkg -sic
# cd ~

