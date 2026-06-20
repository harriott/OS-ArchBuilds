#!/bin/bash

# bash $OSAB/bs-2-into_X/3-sudo-to_X.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi
set -ev  # quits on error, prints each statement here, including comments

read -p "\$OSAB is $OSAB - looks good?"

#=> 1 MZNLN128  into  fstab
echo >> /etc/fstab
echo 'LABEL=MZNLN128 /mnt/MZNLN128 ext4 defaults 0 2' >> /etc/fstab
echo >> /etc/fstab
# - ready for next boot

#=> 2 prepare for X
# Xorg
pacman -S xorg-server

# xinit
pacman -S xorg-xinit

# X settings
pacman -S xorg-xset

# xsel
pacman -S xsel

#=> 2 prepare for X - updatedb.conf
if   [[ $host =~ HPEB840G37 ]]; then
  sudo cp $OSAB/mb-HPEB840G3x/7/etc/updatedb.conf /etc/updatedb.conf
elif [[ $host =~ HPEB840G38 ]]; then
  sudo cp $OSAB/mb-HPEB840G3x/8/etc/updatedb.conf /etc/updatedb.conf
else
  sudo cp $machBld/etc/updatedb.conf /etc/updatedb.conf
fi
updatedb

# #=> 2 save grub.cfg
# gcs="$machLg/boot-grub-grub-pb3.cfg"
# cp /boot/grub/grub.cfg $gcs; chown jo:jo $gcs
# # pb $gcs

#=> 3 softwares - encoding - entr
# entr (also used by batwatch)
pacman -S entr

#=> 3 softwares - encoding - for bat-extras
# prettier (needs  nodejs)
pacman -S prettier

# python-black
pacman -S python-black

# shfmt
pacman -S shfmt

# #=> 3 softwares - encoding - for easyplayer
# pacman -S python-numpy

#=> 3 softwares - encoding - NeoMutt
pacman -S neomutt  # brings in  notmuch-runtime

#=> 3 softwares - file manage - bat-extras
pacman -S bat-extras  # brings in bat (used in  fzf --preview)
# bat-modules, batdiff, batgrep, batman, batpipe, batwatch, prettybat

#=> 3 softwares - file manage - fzy
pacman -S fzy

#=> 3 softwares - file manage - rsnapshot install
pacman -S rsnapshot

#=> 3 softwares - networking
# aria2
pacman -S aria2

# msmtp-mta
pacman -S msmtp-mta  # brings in  msmtp

# OpenSSH
pacman -S openssh

#=> 3 softwares - rebuild-detector
pacman -S rebuild-detector

#=> 3 softwares - systeroid
pacman -S systeroid

#=> 4 when X 0 - appearance - hicolor-icon-theme
pacman -S hicolor-icon-theme

#=> 4 when X 0 - appearance - Ubuntu font family
pacman -S ttf-ubuntu-font-family

#=> 4 when X 0 - appres
pacman -S xorg-appres

#=> 4 when X 0 - AV
# AlsaUtils
pacman -S alsa-utils

# GStreamer Plug-ins
pacman -S gst-libav gst-plugins-base gst-plugins-good gst-plugins-ugly

# mediainfo
pacman -S mediainfo

#=> 4 when X 0 - networking
# DNS Lookup utility
pacman -S bind-tools

# Chromium
pacman -S chromium

# transmission-cli
pacman -S transmission-cli

# rtorrent
pacman -S rtorrent

#=> 4 when X 0 - networking - OpenSSH - grab default sshd_config
g=/home/jo/sshd_config-q6k; sudo cp /etc/ssh/sshd_config $g; chown jo:jo $g

#=> 4 when X 0 - system
# espeak-ng & termdown
pacman -S espeak-ng termdown

# moreutils
pacman -S moreutils

# xterm
pacman -S xterm

#=> 4 when X 0 - xautomation
# for mouse middle click
pacman -S xautomation

#=> 4 when X 0 - xinput
# for changing libinput (touchpad) settings at runtime
pacman -S xorg-xinput

#=> 4 when X 0 - xman
pacman -S xorg-xman

#=> 4 when X 1 IO hw - Wacom Tablet
pacman -S xf86-input-wacom

#=> 4 when X 1 IO hw - Xbindkeys
pacman -S xbindkeys

#=> 4 when X 1 IO hw - xorg.conf.d 0
[ -d /etc/X11/xorg.conf.d ] || mkdir /etc/X11/xorg.conf.d

#=> 4 when X 1 IO hw - xorg.conf.d 1 monitor settings
# disable DPMS
cp $OSAB/nodes-etc/10-monitor.conf /etc/X11/xorg.conf.d/10-monitor.conf

#=> 4 when X for laptop - HandleLidSwitchExternalPower
# allows programs to continue running when lid is closed while laptop is charging
sed -i 's/^#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/' /etc/systemd/logind.conf

#=> 4 when X for laptop - slock
# for laptops
pacman -S slock

#=> 4 when X for laptop - brightnessctl
pacman -S brightnessctl

#=> 4 when X for laptop - xbacklight - xorg-xbacklight 0 install
pacman -S xorg-xbacklight

# #=> 4 when X for laptop - xbacklight - xorg-xbacklight 1 remove
# pacman -Rs xorg-xbacklight

#=> 5 Vim - neovim
pacman -S neovim

#=> 6 finish
echo "now reboot"

