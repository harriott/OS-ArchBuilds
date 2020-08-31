#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# sudo bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> software - android-tools
# pacman -S android-tools

#=> softwares - documenting
# Ghostscript
# pacman -S ghostscript

# Pandoc
# pacman -S pandoc

# TeX Live
pacman -S texlive-most texlive-langchinese

#=> softwares - file manage
# cdrtools
pacman -S cdrtools

# GVFS
pacman -S gvfs

# gvfs-mtp - for accessing phone memory
pacman -S gvfs-mtp

# nnn
pacman -S nnn

#=> softwares - gtop
pacman -S gtop

#=> softwares - cmatrix
pacman -S cmatrix

#=> softwares - iptraf-ng
pacman -S iptraf-ng

#=> softwares - multimedia
# Cmus
pacman -S cmus

# espeak-ng-espeak & termdown
pacman -S espeak-ng-espeak termdown

# iscan
pacman -S iscan

# pulsemixer
pacman -S pulsemixer

#=> softwares - networking
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

# Transmission
pacman -S transmission-qt

#=> softwares - Openbox environment
# configure Openbox
pacman -S lxappearance-obconf obconf

# CopyQ
pacman -S copyq

# Dunst
pacman -S dunst

# galculator
pacman -S galculator

# Gmrun
pacman -S gmrun

# gsimplecal
pacman -S gsimplecal

# Openbox & tint2
pacman -S openbox tint2
# Now pull over my tweaks:
# nvim ~/.config/tint2/tint2rc $ARCHBUILDS/jo/Openbox/tint2rc

# openbox/importScreenshot.sh
cp $ARCHBUILDS/jo/Openbox/openbox/importScreenshot.sh /home/jo/.config/openbox/importScreenshot.sh
chmod 755 /home/jo/.config/openbox/importScreenshot.sh

# rc.xml
cp $ARCHBUILDS/jo/Openbox/openbox/rc.xml /home/jo/.config/openbox/rc.xml

#=> softwares - system
# Bluefish
pacman -S bluefish

# Conky
pacman -S conky

# fcron
pacman -S fcron

# sysstat
pacman -S sysstat

# python-virtualenvwrapper
pacman -S python-virtualenvwrapper

# xvt-perls
pacman -S urxvt-perls

