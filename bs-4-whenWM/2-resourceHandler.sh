#!/bin/bash

# bash $OSAB/bs-4-whenWM/2-resourceHandler.sh

# gAUR  is defined in $AjB/bashrc-console

set -v
trap read debug  # puts a read request after each executable line

#=> grab mimeapps.list
cp ~/.config/mimeapps.list $machLg/jo/mimeapps_list/$(date +%y%m%d).ini

#=> handlr 0 handlr
sudo pacman -S handlr

#=> handlr 1 xdg-utils-handlr
# sudo pacman -Rs xdg-utils[-mimeo]  can't be done as needed by several other packages
gAUR xdg-utils-handlr
nvim -c "silent! /chmln\/handlr" PKGBUILD
makepkg -sic  # don't forget to allow Removal of other  xdg-utils

#=> handlr 2 set default handlers
handlr set .3gp mpv.desktop
handlr set .BMP org.nomacs.ImageLounge.desktop
# handlr set .conf gvim.desktop  # not sure this does anything
handlr set .css gvim.desktop
handlr set .csv gvim.desktop
handlr set .divx mpv.desktop
handlr set .docx libreoffice-writer.desktop
handlr set .el gvim.desktop
handlr set .epub com.github.johnfactotum.Foliate.desktop
handlr set .fetl gvim.desktop
handlr set .flac mpv.desktop
handlr set .flv mpv.desktop
handlr set .html gvim.desktop  # still feeds to  Firefox...
handlr set .ico org.nomacs.ImageLounge.desktop
handlr set .jpg org.nomacs.ImageLounge.desktop
handlr set .kdbx org.keepassxc.KeePassXC.desktop
handlr set .log gvim.desktop
handlr set .lua gvim.desktop
handlr set .m4a mpv.desktop
handlr set .md gvim.desktop
handlr set .MOV mpv.desktop
handlr set .mp3 mpv.desktop
handlr set .ogg mpv.desktop
handlr set .ogv mpv.desktop
handlr set .oma mpv.desktop  # $ABjo/mime/audio-oma.xml
handlr set .opus mpv.desktop
handlr set .org gvim.desktop
handlr set .pdf org.pwmt.zathura.desktop
handlr set .png org.nomacs.ImageLounge.desktop
handlr set .pl gvim.desktop
handlr set .ps1 gvim.desktop
handlr set .mediawiki gvim.desktop  # $ABjo/mediawiki.xml
handlr set .mka mpv.desktop
handlr set .mkv mpv.desktop
handlr set .mp4 mpv.desktop
handlr set .mpg mpv.desktop
handlr set .py gvim.desktop
handlr set .rmj mpv.desktop
handlr set .sh gvim.desktop
handlr set .sifw gvim.desktop
handlr set .svg gpicview.desktop
handlr set .tex gvim.desktop
handlr set .tiff feh.desktop
handlr set .toml gvim.desktop
handlr set .txt gvim.desktop
handlr set .url gvim.desktop
handlr set .wav mpv.desktop
handlr set .wma mpv.desktop
handlr set .webm mpv.desktop
handlr set .webp feh.desktop
handlr set .xml gvim.desktop
handlr set inode/directory pcmanfm.desktop

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

