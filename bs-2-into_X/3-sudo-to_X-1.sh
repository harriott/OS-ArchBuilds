#!/bin/bash

# bash $OSAB/bs-2-into_X/3-sudo-to_X-1.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi
set -ev  # quits on error, prints each statement here, including comments

read -p "\$OSAB is $OSAB - looks good?"

#=> 1 neovim
pacman -S neovim

# #=> X 0 - appearance - hicolor-icon-theme
# pacman -S hicolor-icon-theme

# #=> X 0 - appearance - Ubuntu font family
# pacman -S ttf-ubuntu-font-family

# #=> X 0 - appres
# pacman -S xorg-appres

# #=> X 0 - AV - AlsaUtils
# pacman -S alsa-utils

# #=> X 0 - AV 0 mediainfo
# pacman -S mediainfo

# #=> X 0 - AV 0 PipeWire
# pacman -S pipewire-alsa pipewire-audio pipewire-jack pipewire-pulse wiremix
# # - bring in  pipewire-audio

#=> X 0 - AV 1 GStreamer
# (after  pipewire-jack) GStreamer Plug-ins
pacman -S gst-libav gst-plugin-pipewire gst-plugins-base gst-plugins-good gst-plugins-ugly

#=> X 0 - networking
# DNS Lookup utility
pacman -S bind-tools

# Chromium
pacman -S chromium

# transmission-cli
pacman -S transmission-cli

# rtorrent
pacman -S rtorrent

#=> X 0 - networking - OpenSSH - grab default sshd_config
g=/home/jo/sshd_config-q6k; sudo cp /etc/ssh/sshd_config $g; chown jo:jo $g

#=> X 0 - system
# espeak-ng & termdown
pacman -S espeak-ng termdown

# moreutils
pacman -S moreutils

# xterm
pacman -S xterm

#=> X 0 - xautomation
# for mouse middle click
pacman -S xautomation

#=> X 0 - xinput
# for changing libinput (touchpad) settings at runtime
pacman -S xorg-xinput

#=> X 0 - xman
pacman -S xorg-xman

#=> X 1 IO hw - Wacom Tablet
pacman -S xf86-input-wacom

#=> X 1 IO hw - Xbindkeys
pacman -S xbindkeys

#=> X 1 IO hw - xorg.conf.d 0
[ -d /etc/X11/xorg.conf.d ] || mkdir /etc/X11/xorg.conf.d

#=> X 1 IO hw - xorg.conf.d 1 monitor settings
# disable DPMS
cp $OSAB/nodes-etc/10-monitor.conf /etc/X11/xorg.conf.d/10-monitor.conf

#=> X for laptop - HandleLidSwitchExternalPower
# allows programs to continue running when lid is closed while laptop is charging
sed -i 's/^#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/' /etc/systemd/logind.conf

#=> X for laptop - slock
# for laptops
pacman -S slock

#=> X for laptop - brightnessctl
pacman -S brightnessctl

#=> X for laptop - xbacklight - xorg-xbacklight 0 install
pacman -S xorg-xbacklight

# #=> X for laptop - xbacklight - xorg-xbacklight 1 remove
# pacman -Rs xorg-xbacklight

#=> 6 finish
echo "now reboot"

