#!/bin/bash

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 set $ARCHBUILDS & $machBld
cd $(dirname "${BASH_SOURCE[0]}")
. ../../Bash/export-storage
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 1 go slow
set -ev  # quits on error, prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 to X
# # really needed

# #==> prepare for X
# # Xorg
# pacman -S xorg-server

# # xinit
# pacman -S xorg-xinit

# # X settings
# pacman -S xorg-xset

# # xsel
# pacman -S xsel

# #==> updatedb.conf
# cp $machBld/etc/updatedb.conf /etc/updatedb.conf
# updatedb

#=> 1 when X 0

# #==> appearance - hicolor-icon-theme
# pacman -S hicolor-icon-theme

# #==> appearance - Ubuntu font family
# pacman -S ttf-ubuntu-font-family

# #==> appres
# pacman -S xorg-appres

# #==> AV
# # AlsaUtils
# pacman -S alsa-utils

# # GStreamer Plug-ins
# pacman -S gst-libav gst-plugins-base gst-plugins-good gst-plugins-ugly

# # mediainfo
# pacman -S mediainfo

# # PulseAudio
# pacman -S pulsemixer

# #==> file manage
# # fzy
# pacman -S fzy

# # shfmt (for bat-extras-git)
# pacman -S shfmt

# #==> file manage - rsnapshot install
# pacman -S rsnapshot

# #==> networking
# # DNS Lookup utility
# pacman -S bind-tools

# # Chromium
# pacman -S chromium

# # msmtp-mta
# pacman -S msmtp-mta  # brings in  msmtp

# # NeoMutt
# pacman -S neomutt

# # OpenSSH
# pacman -S openssh

#==> networking - OpenSSH - grab default sshd_config
g=/home/jo/sshd_config-m8f; sudo cp /etc/ssh/sshd_config $g; sudo chown jo:jo $g

# #==> system
# # espeak-ng-espeak & termdown
# pacman -S espeak-ng-espeak termdown

# # moreutils
# pacman -S moreutils

# # xterm
# pacman -S xterm

# #==> xautomation
# # for mouse middle click
# pacman -S xautomation

# #==> xinput
# # for changing libinput (touchpad) settings at runtime
# pacman -S xorg-xinput

# #==> xman
# pacman -S xorg-xman

# #=> 1 when X 1 IO hw - libva-mesa-driver
# # - for  ATI Radeon HD 4870
# pacman -S libva-mesa-driver

# #=> 1 when X 1 IO hw

# #==> Wacom Tablet
# pacman -S xf86-input-wacom

# #==> Xbindkeys
# sudo pacman -S xbindkeys

# #==> xorg.conf.d 0
# [ -d /etc/X11/xorg.conf.d ] || mkdir /etc/X11/xorg.conf.d

# #==> xorg.conf.d 1 monitor settings
# # disable DPMS
# cp $ARCHBUILDS/etc/10-monitor.conf /etc/X11/xorg.conf.d/10-monitor.conf

# #==> xorg.conf.d 1 touch settings
# # will need a reboot
# cp $machBld/etc/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf
# true

# #=> 1 when X 1 for laptop
# # wanted

# #==> HandleLidSwitchExternalPower
# # allows programs to continue running when lid is closed while laptop is charging
# sed -i 's/^#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/' /etc/systemd/logind.conf

# #==> slock
# # for laptops
# pacman -S slock

# #==> xbacklight
# pacman -S xorg-xbacklight

# #=> 1 when X 1 vimish
# # wanted

# #==> flake8 & Vim
# # 0 gVim
# pacman -S flake8 gvim

# #==> Vim - Neovim
# pacman -S neovim python-pynvim

# #==> Vim - ShellCheck
# # (for bash linting in xVim)
# pacman -S shellcheck  # brings in Haskell

# #=> 3 finish
# echo "now reboot"

