#!/bin/bash
# vim: fdm=expr ft=sh.shfold:

# sudo bash <thisfile>.sh

ARCHBUILDS=/home/jo/ArchBuilds

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> pkgconf
pacman -S pkgconf

# #=> software - android-tools
# pacman -S android-tools

# #=> softwares - documenting
# # Ghostscript
# pacman -S ghostscript

# # Pandoc
# pacman -S pandoc

# # TeX Live
# pacman -S texlive-most texlive-langchinese  # select all

# #=> softwares - file manage
# # cdrtools
# pacman -S cdrtools

# # GVFS
# pacman -S gvfs

# # gvfs-mtp - for accessing phone memory
# pacman -S gvfs-mtp

# # nnn
# pacman -S nnn

# #=> softwares - gtop
# pacman -S gtop

# #=> softwares - cmatrix
# pacman -S cmatrix

# #=> softwares - iptraf-ng
# pacman -S iptraf-ng

# #=> softwares - multimedia
# # Cmus
# pacman -S cmus

# # espeak-ng-espeak & termdown
# pacman -S espeak-ng-espeak termdown

# # iscan
# pacman -S iscan

# # pulsemixer
# pacman -S pulsemixer

# #=> softwares - networking 1
# # iw
# pacman -S iw

# # iwd
# pacman -S iwd
# systemctl enable iwd.service --now
# systemctl status iwd.service

# # lynx
# pacman -S lynx

# #=> softwares - networking 2
# # mailcap
# pacman -S mailcap

# # Transmission
# pacman -S transmission-qt

# #=> softwares - Openbox environment 1
# # configure Openbox
# pacman -S lxappearance-obconf obconf

# # CopyQ
# pacman -S copyq

# # Dunst
# pacman -S dunst

# # galculator
# pacman -S galculator

# # Gmrun
# pacman -S gmrun

# # gsimplecal
# pacman -S gsimplecal

# # Openbox & tint2
# pacman -S openbox tint2

# #=> softwares - system
# # Bluefish
# pacman -S bluefish

# # Conky
# pacman -S conky

# # fcron
# pacman -S fcron

# # sysstat
# pacman -S sysstat

# # python-virtualenvwrapper
# pacman -S python-virtualenvwrapper

# # xvt-perls
# pacman -S urxvt-perls

# # xdotool
# pacman -S xdotool

