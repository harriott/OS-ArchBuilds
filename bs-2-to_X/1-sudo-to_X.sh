#!/bin/bash

# $OSAB/bs-2-to_X/1-sudo-to_X.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 set $OSAB & $machBld
cd $(dirname "${BASH_SOURCE[0]}")
. ../../Bash/export-storage
read -p "\$OSAB is $OSAB - looks good?"

#=> 1 go slow
set -ev  # quits on error, prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 2 prepare for X
# # Xorg
# pacman -S xorg-server

# # xinit
# pacman -S xorg-xinit

# # X settings
# pacman -S xorg-xset

# # xsel
# pacman -S xsel

# #=> 2 prepare for X - updatedb.conf
# cp $machBld/etc/updatedb.conf /etc/updatedb.conf
# updatedb

#=> 2 save grub.cfg
gcs=$ulLA/ml-$host/boot-grub-grub.cfg; cp /boot/grub/grub.cfg $gcs; chown jo:jo $gcs
# pb $ulLA/ml-$host/boot-grub-grub.cfg

#=> 3 softwares - encoding - entr
# entr (also used by batwatch)
pacman -S entr

#=> 3 softwares - encoding - for bat-extras
# prettier
pacman -S prettier

# python-black
pacman -S python-black

# shfmt
pacman -S shfmt

# #=> 3 softwares - encoding - NeoMutt
# pacman -S neomutt

#=> 3 softwares - file manage - bat-extras
sudo pacman -S bat-extras  # brings in bat (used in  fzf --preview)

# #=> 3 softwares - file manage - fzy
# pacman -S fzy

# #=> 3 softwares - file manage - rsnapshot install
# pacman -S rsnapshot

#=> 3 softwares - networking
# aria2
pacman -S aria2

# msmtp-mta
pacman -S msmtp-mta  # brings in  msmtp

# OpenSSH
pacman -S openssh

# #=> 3 softwares - systeroid
# pacman -S systeroid

# #=> 4 when X 0 - appearance - hicolor-icon-theme
# pacman -S hicolor-icon-theme

# #=> 4 when X 0 - appearance - Ubuntu font family
# pacman -S ttf-ubuntu-font-family

# #=> 4 when X 0 - appres
# pacman -S xorg-appres

# #=> 4 when X 0 - AV
# # AlsaUtils
# pacman -S alsa-utils

# # GStreamer Plug-ins
# pacman -S gst-libav gst-plugins-base gst-plugins-good gst-plugins-ugly

# # mediainfo
# pacman -S mediainfo

# # PulseAudio
# pacman -S pulsemixer

#=> 4 when X 0 - networking
# DNS Lookup utility
pacman -S bind-tools

# Chromium
pacman -S chromium

# transmission-cli
pacman -S transmission-cli

# #=> 4 when X 0 - networking - OpenSSH - grab default sshd_config
# g=/home/jo/sshd_config-m8f; sudo cp /etc/ssh/sshd_config $g; chown jo:jo $g

# #=> 4 when X 0 - system
# # espeak-ng-espeak & termdown
# pacman -S espeak-ng-espeak termdown

# # moreutils
# pacman -S moreutils

# # xterm
# pacman -S xterm

# #=> 4 when X 0 - xautomation
# # for mouse middle click
# pacman -S xautomation

# #=> 4 when X 0 - xinput
# # for changing libinput (touchpad) settings at runtime
# pacman -S xorg-xinput

# #=> 4 when X 0 - xman
# pacman -S xorg-xman

# #=> 4 when X 1 IO hw - Wacom Tablet
# pacman -S xf86-input-wacom

# #=> 4 when X 1 IO hw - Xbindkeys
# sudo pacman -S xbindkeys

# #=> 4 when X 1 IO hw - xorg.conf.d 0
# [ -d /etc/X11/xorg.conf.d ] || mkdir /etc/X11/xorg.conf.d

# #=> 4 when X 1 IO hw - xorg.conf.d 1 monitor settings
# # disable DPMS
# cp $OSAB/etc/10-monitor.conf /etc/X11/xorg.conf.d/10-monitor.conf

# #=> 4 when X 1 IO hw - xorg.conf.d 1 touch settings
# # will need a reboot
# cp $machBld/etc/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf
# true

# #=> 4 when X for laptop - HandleLidSwitchExternalPower
# # allows programs to continue running when lid is closed while laptop is charging
# sed -i 's/^#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/' /etc/systemd/logind.conf

# #=> 4 when X for laptop - slock
# # for laptops
# pacman -S slock

# #=> 4 when X for laptop - xbacklight - acpilight
# pacman -S acpilight

# #=> 4 when X for laptop - xbacklight - xorg-xbacklight 0 install
# pacman -S xorg-xbacklight

#=> 4 when X for laptop - xbacklight - xorg-xbacklight 1 remove
pacman -Rs xorg-xbacklight

# #=> 5 Vim - flake8 & Vim
# pacman -S flake8 gvim neovide

# #=> 5 Vim - Neovim
# pacman -S neovim python-pynvim

# #=> 5 Vim - ShellCheck
# # (for bash linting in xVim)
# pacman -S shellcheck  # brings in Haskell

# #=> 6 finish
# echo "now reboot"

