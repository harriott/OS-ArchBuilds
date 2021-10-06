#!/bin/bash

# sudo bash <thisfile>.sh

ARCHBUILDS=/home/jo/ArchBuilds

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> pkgconf
pacman -S pkgconf

# #=> software - android-tools
# pacman -S android-tools

#=> softwares - documenting
# Ghostscript
pacman -S ghostscript

# Pandoc
pacman -S pandoc

# TeX Live
pacman -S texlive-most texlive-langchinese  # select all

#=> softwares - file manage
# cdrtools
pacman -S cdrtools

# GVFS
pacman -S gvfs

# gvfs-mtp - for accessing phone memory
pacman -S gvfs-mtp

# nnn
pacman -S nnn

#=> softwares - cmatrix
pacman -S cmatrix

#=> softwares - multimedia
# Cmus
pacman -S cmus

# espeak-ng-espeak & termdown
pacman -S espeak-ng-espeak termdown

# iscan
pacman -S iscan

# pulsemixer
pacman -S pulsemixer

# #=> softwares - networking iw
# # iw - might be there already
# pacman -S iw

#=> softwares - networking
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

#=> softwares - Openbox environment 1
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

#=> softwares - system
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

