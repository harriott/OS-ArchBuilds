#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# run from root to have  $ARCHBUILDS  $MACHINE
true

# ARCHBUILDS=/ArchBuilds
# ARCHBUILDS=/home/jo/ArchBuilds
  # MACHINE=$ARCHBUILDS/$(uname -n)

#=> 0 to X
# really needed

# #==> hard drives
# stat -c '%A %a %h %U %G %s %n' /mnt/*  # check ownerships

# # make writable for jo
# # chown jo:jo /mnt/9QF57J6Q
# # chown jo:jo /mnt/SD480GSSDPlus
# # chown jo:jo /mnt/SDEP128G
# # chown jo:jo /mnt/ST3320418AS
# # chown jo:jo /mnt/WD30EZRZ

# nvim -o $MACHINE/etc/updatedb.conf /etc/updatedb.conf
# cp $MACHINE/etc/updatedb.conf /etc/updatedb.conf
# updatedb

# #==> prepare for X
# # Xorg
# pacman -S xorg-server

# # xinit
# pacman -S xorg-xinit

# # X settings
# pacman -S xorg-xset

# # xsel
# pacman -S xsel

#=> 1 when X
# wanted

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
# # gst-plugins-base
# pacman -S gst-libav gst-plugins-good gst-plugins-ugly

# # mediainfo
# pacman -S mediainfo

# # PulseAudio
# pacman -S pulsemixer

# #==> AV remove PulseAudio
# # removal step 1 (also removes pulseaudio-alsa)
# pacman -Rs zoom
# # removal step 1 (also removes pulseaudio)
# pacman -Rs pulsemixer

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
# pacman -S msmtp-mta

# # NeoMutt
# pacman -S neomutt

# # Secure Shell
# pacman -S openssh

# #==> networking - LastPass CLI
# pacman -S lastpass-cli

# #==> python-pew
# pacman -S python-pew
# pacman -Rs python-pew

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

#=> 1 when X - IO hw
# wanted

# libva-mesa-driver
# for  ATI Radeon HD 4870
pacman -S libva-mesa-driver

# Wacom Tablet
pacman -S xf86-input-wacom

# #==> 0 xorg.conf.d
# [ -d /etc/X11/xorg.conf.d ] || mkdir /etc/X11/xorg.conf.d

# #==> 1 monitor settings
# # disable DPMS
# cp $ARCHBUILDS/etc/10-monitor.conf /etc/X11/xorg.conf.d/10-monitor.conf

# #==> 1 touch settings
# # will need a reboot
# cp $MACHINE/etc/30-touchpad.conf /etc/X11/xorg.conf.d/30-touchpad.conf
# true

#=> 1 when X - for laptop
# wanted

#==> HandleLidSwitchExternalPower
# allows programs to continue running when lid is closed while laptop is charging
sed -i 's/^#HandleLidSwitchExternalPower=suspend/HandleLidSwitchExternalPower=ignore/' /etc/systemd/logind.conf

#==> slock
# for laptops
pacman -S slock

# #==> xbacklight
# pacman -S xorg-xbacklight

#=> 1 when X - vimish
# wanted

# #==> flake8 & Vim
# # 0 gVim
# pacman -S flake8 gvim

# #==> Vim - Neovim
# pacman -S neovim python-pynvim

# #==> Vim - ShellCheck
# # (for bash linting in xVim)
# pacman -S shellcheck  # brings in Haskell

# #=> 2 automatic login tty1 0 on
# [ -d /etc/systemd/system/getty@tty1.service.d ] || mkdir /etc/systemd/system/getty@tty1.service.d
# cp $ARCHBUILDS/etc/systemd/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf

# #=> 2 automatic login tty1 1 off
# rm /etc/systemd/system/getty@tty1.service.d/override.conf

# #=> 2 automatic login tty2 0 on
# [ -d /etc/systemd/system/getty@tty2.service.d ] || mkdir /etc/systemd/system/getty@tty2.service.d
# cp $ARCHBUILDS/etc/systemd/override.conf /etc/systemd/system/getty@tty2.service.d/override.conf

# #=> 2 automatic login tty1 2 off
# rm /etc/systemd/system/getty@tty2.service.d/override.conf

# #=> 3 finish
# echo "now reboot"

