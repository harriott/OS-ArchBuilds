#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=/ArchBuilds

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

# #==> monitor settings
# # disable DPMS
# [ -d /etc/X11/xorg.conf.d ] || mkdir /etc/X11/xorg.conf.d
# cp $ARCHBUILDS/etc/10-monitor.conf /etc/X11/xorg.conf.d/10-monitor.conf

# #==> python-pew
# pacman -S python-pew
# pacman -Rs python-pew

# #==> softwares - appearance - hicolor-icon-theme
# pacman -S hicolor-icon-theme

# #==> softwares - appearance - Ubuntu font family
# pacman -S ttf-ubuntu-font-family

# #==> softwares - AV
# # AlsaUtils
# pacman -S alsa-utils

# # GStreamer Plug-ins
# # gst-plugins-base
# pacman -S gst-libav gst-plugins-good gst-plugins-ugly

# # mediainfo
# pacman -S mediainfo

# # PulseAudio
# pacman -S pulsemixer

# #==> softwares - AV remove PulseAudio
# # removal step 1 (also removes pulseaudio-alsa)
# pacman -Rs zoom
# # removal step 1 (also removes pulseaudio)
# pacman -Rs pulsemixer

# #==> softwares - file manage
# # fzy
# pacman -S fzy

# # shfmt (for bat-extras-git)
# pacman -S shfmt

# #==> softwares - file manage - rsnapshot install
# pacman -S rsnapshot

# #==> softwares - networking
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

# #==> softwares - networking - LastPass CLI
# pacman -S lastpass-cli

#==> softwares - system
# espeak-ng-espeak & termdown
pacman -S espeak-ng-espeak termdown

# moreutils
pacman -S moreutils

# xterm
pacman -S xterm

#==> vim
# 0 gVim
pacman -S gvim

#===> 1 Vim
# flake8
pacman -S flake8

# Neovim
pacman -S neovim python-pynvim

# Packages
pacman -S vim-nerdcommenter vim-supertab vim-surround vim-syntastic vim-tabular

# ShellCheck (for bash linting in xVim)
pacman -S shellcheck  # brings in Haskell

# #==> xautomation
# # for mouse middle click
# pacman -S xautomation

#=> 2 automatic login to virtual console
ls /etc/systemd/system
mkdir /etc/systemd/system/getty@tty1.service.d
cp $ARCHBUILDS/etc/systemd/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf

#=> 3 finish
echo "now reboot"

