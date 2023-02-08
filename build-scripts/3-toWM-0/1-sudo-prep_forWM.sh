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
# pacman -S pandoc-cli

# # TeX Live
# pacman -S texlive-most texlive-langchinese texlive-langgreek  # select all

# #=> documenting - TeX Live - max_print_line
# sudo sed -i 's/^max_print_line = 79/max_print_line = 4000/' /etc/texmf/web2c/texmf.cnf
# # - works, but I prefer my function  x  in  $Bash/bashrc-wm

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

# #=> for CliFM
pacman -S noto-fonts-emoji  # don't work in  urxvt  or  xterm...

# #=> cmatrix
# pacman -S cmatrix

# #=> Cmus
# pacman -S cmus

# #=> hw
# # exFAT utilities
# pacman -S exfatprogs

# # lm_sensors
# pacman -S lm_sensors

#=> hw - xorg-xev
pacman -S xorg-xev

# #=> PulseAudio - pulsemixer
# pacman -S pulsemixer

# #=> networking
# # bluetooth
# gpasswd -a jo lp
# pacman -S blueman bluez bluez-utils pulseaudio-bluetooth
# systemctl enable bluetooth.service --now

# # iptraf-ng
# pacman -S iptraf-ng

# # mailcap
# pacman -S mailcap

# # Transmission
# pacman -S transmission-qt

# #=> WM environment
# # cbatticon
# pacman -S cbatticon

# # CopyQ
# pacman -S copyq

# # Dunst
# pacman -S dunst

# # galculator
# pacman -S galculator

# # gsimplecal
# pacman -S gsimplecal

# #=> pkgconf
# pacman -S --needed pkgconf

# #=> redshift
# pacman -S redshift

# #=> system
# # Conky
# pacman -S conky

# # gtop
# pacman -S gtop

# # python-virtualenvwrapper
# pacman -S python-virtualenvwrapper

# # sysstat
# pacman -S sysstat

# # xdotool
# pacman -S xdotool

# #=> various
# # Bluefish
# pacman -S bluefish

# # urxvt-perls
# pacman -S urxvt-perls  # brings in  rxvt-unicode

