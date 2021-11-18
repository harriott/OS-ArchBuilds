#!/bin/bash

# sudo bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

echo $ARCHBUILDS

#=> android-tools
pacman -S android-tools

#=> documenting
# Ghostscript
pacman -S ghostscript

# Pandoc
pacman -S pandoc

# TeX Live
pacman -S texlive-most texlive-langchinese  # select all

#=> ebook - Calibre
pacman -S calibre

#=> ebook - Foliate
pacman -S foliate
# Openbox Menu > Office > Foliate > Menu > Advanced > Continuous

#=> file manage
# cdrtools
pacman -S cdrtools

# GVFS
pacman -S gvfs

# gvfs-mtp - for accessing phone memory
pacman -S gvfs-mtp

# nnn
pacman -S nnn

#=> cmatrix
pacman -S cmatrix

#=> multimedia
# Cmus
pacman -S cmus
mkdir ~/.config/cmus

# espeak-ng-espeak & termdown
pacman -S espeak-ng-espeak termdown

# iscan
pacman -S iscan

# pulsemixer
pacman -S pulsemixer

# #=> networking iw
# # made redundant by  $ITstack/unix_like-GNULinux/iwctl-connect.sh
# pacman -S iw

#=> networking
# bluetooth
pacman -S bluez bluez-utils

# iptraf-ng
pacman -S iptraf-ng

# lynx
pacman -S lynx

# mailcap
pacman -S mailcap

# Transmission
pacman -S transmission-qt

#=> Openbox environment
# cbatticon
pacman -S cbatticon

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

#=> pkgconf
pacman -S pkgconf

#=> system
# Bluefish
pacman -S bluefish

# Conky
pacman -S conky

# exFAT utilities
pacman -S exfatprogs

# gtop
pacman -S gtop

# lm_sensors
pacman -S lm_sensors

# python-virtualenvwrapper
pacman -S python-virtualenvwrapper

# sysstat
pacman -S sysstat

# xvt-perls
pacman -S urxvt-perls

# xdotool
pacman -S xdotool

