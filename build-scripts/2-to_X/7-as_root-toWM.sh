#!/bin/bash

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev
trap read debug  # puts a read request after each executable line

# #=> android-tools
# pacman -S android-tools

# #=> documenting
# # Ghostscript
# pacman -S ghostscript

# # Pandoc
# pacman -S pandoc

# # TeX Live
# pacman -S texlive-most texlive-langchinese texlive-langgreek  # select all

#=> documenting - TeX Live - max_print_line
sudo sed -i 's/^max_print_line = 79/max_print_line = 4000/' /etc/texmf/web2c/texmf.cnf
# - works, but I prefer my function  x  in  $Bash/bashrc-wm

# #=> ebook - Calibre
# pacman -S calibre

# #=> ebook - Foliate
# pacman -S foliate
# # Openbox Menu > Office > Foliate > Menu > Advanced > Continuous

# #=> file manage
# # cdrtools
# pacman -S cdrtools

# # GVFS
# pacman -S gvfs

# # gvfs-mtp - for accessing phone memory
# pacman -S gvfs-mtp

# # nnn
# pacman -S nnn

# #=> cmatrix
# pacman -S cmatrix

# #=> Cmus
# pacman -S cmus

#=> multimedia - PulseAudio
# pavucontrol - for pnmixer
pacman -S pavucontrol
sed -i '/VolumeControlCommand/ s/=.*/=pavucontrol/' /home/jo/.config/pnmixer/config

# pulsemixer
pacman -S pulsemixer

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

#=> WM environment
# cbatticon
pacman -S cbatticon

# CopyQ
pacman -S copyq

# Dunst
pacman -S dunst

# galculator
pacman -S galculator

# gsimplecal
pacman -S gsimplecal

#=> Openbox environment
# configure Openbox
pacman -S lxappearance-obconf obconf

# Gmrun
pacman -S gmrun

# Openbox & tint2
pacman -S openbox tint2

#=> pkgconf
pacman -S pkgconf

#=> redshift
pacman -S redshift

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

