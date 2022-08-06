#!/bin/bash

# sudo bash 29-as_root-toOpenbox.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

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
pacman -S texlive-most texlive-langchinese texlive-langgreek  # select all

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

#=> multimedia - PulseAudio
# pavucontrol - for pnmixer
pacman -S pavucontrol
sed -i '/VolumeControlCommand/ s/=.*/=pavucontrol/' /home/jo/.config/pnmixer/config

# pulsemixer
pacman -S pulsemixer

# #=> networking iw
# # made redundant by  $ITstack/unix_like-GNULinux/iwctl-connect.sh
# pacman -S iw

#=> networking
# bluetooth
gpasswd -a jo lp
pacman -S blueman bluez bluez-utils pulseaudio-bluetooth
systemctl enable bluetooth.service --now

# iptraf-ng
pacman -S iptraf-ng

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

#=> redshift
pacman -S redshift

#=> wmctrl
pacman -S wmctrl

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

