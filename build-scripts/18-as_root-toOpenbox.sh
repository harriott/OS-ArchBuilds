#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sudo bash <thisfile>.sh

ARCHBUILDS=/home/jo/ArchBuilds

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 pkgconf
pacman -S pkgconf

# #=> 0 software - android-tools
# pacman -S android-tools

# #=> 0 softwares - documenting
# # Ghostscript
# pacman -S ghostscript

# # Pandoc
# pacman -S pandoc

# # TeX Live
# pacman -S texlive-most texlive-langchinese  # select all

# #=> 0 softwares - file manage
# # cdrtools
# pacman -S cdrtools

# # GVFS
# pacman -S gvfs

# # gvfs-mtp - for accessing phone memory
# pacman -S gvfs-mtp

# # nnn
# pacman -S nnn

# #=> 0 softwares - gtop
# pacman -S gtop

# #=> 0 softwares - cmatrix
# pacman -S cmatrix

# #=> 0 softwares - iptraf-ng
# pacman -S iptraf-ng

# #=> 0 softwares - multimedia
# # Cmus
# pacman -S cmus

# # espeak-ng-espeak & termdown
# pacman -S espeak-ng-espeak termdown

# # iscan
# pacman -S iscan

# # pulsemixer
# pacman -S pulsemixer

# #=> 0 softwares - networking 1
# # iw
# pacman -S iw

# # iwd
# pacman -S iwd
# systemctl enable iwd.service --now
# systemctl status iwd.service

# # lynx
# pacman -S lynx

# #=> 0 softwares - networking 2
# # mailcap
# pacman -S mailcap

# # Transmission
# pacman -S transmission-qt

# #=> 0 softwares - Openbox environment 1
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

# #=> 0 softwares - system
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

#=> 1 auracle-git
cd ~/Arch/AUR
[[ -d auracle-git ]] && sudo rm -r auracle-git
git clone https://aur.archlinux.org/auracle-git.git
cd auracle-git
[[ $DISPLAY ]] && xdg-open PKGBUILD # or check it online
makepkg -sic
cd ~

