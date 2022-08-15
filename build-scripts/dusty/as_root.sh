#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 root

#==> for *8192eu*

#===> 1 softwares - appmenu-gtk-module 0 install
pacman -S appmenu-gtk-module

# #===> 1 softwares - appmenu-gtk-module 1 uninstall
# pacman -Rs appmenu-gtk-module
# true

#===> 1 softwares - dkms 0 install
pacman -S dkms
reboot

#===> 1 softwares - dkms 1 remove
# this caused  $userresources  not to be respected in  ~/.xinitrc  and poor fonts in  gVim
pacman -Rs dkms
reboot

#==> hard drives mounts
stat -c '%A %a %h %U %G %s %n' /mnt/*  # check ownerships

# make writable for jo
# chown jo:jo /mnt/9QF57J6Q
# chown jo:jo /mnt/SD480GSSDPlus
# chown jo:jo /mnt/SDEP128G
# chown jo:jo /mnt/ST3320418AS
# chown jo:jo /mnt/WD30EZRZ

# #==> linux headers
# # for *8192eu*
# pacman -S linux-headers
# # - don't forget to  reboot !
# reboot

# #==> move /usr
dt=$(date "+%F-%H-%M")

# #===> grab the UUIDs
# ls -l /dev/disk/by-uuid/ > /mnt/UUIDs.txt

# #===> modify mkinitcpio.conf for repositioning of /usr
# sed 's#fsck)#fsck shutdown usr)#' /etc/mkinitcpio.conf > /mnt/mkinitcpio-$dt.conf
# cp /mnt/mkinitcpio-$dt.conf /etc/mkinitcpio.conf
# grep 'd f' /etc/mkinitcpio.conf

# #===> reset mkinitcpio.conf
# sed 's#fsck shutdown usr)#fsck)#' /etc/mkinitcpio.conf > /mnt/mkinitcpio-$dt.conf
# cp /mnt/mkinitcpio-$dt.conf /etc/mkinitcpio.conf
# grep 'd f' /etc/mkinitcpio.conf

#==> networking iw
# made redundant by  $ulL/connectSSID/iwctl.sh
pacman -S iw

# #==> 0 Numlock on in getty
# mkdir /etc/systemd/system/getty@.service.d
# echo [Service] > /etc/systemd/system/getty@.service.d/activate-numlock.conf
# echo "ExecStartPre=/bin/sh -c 'setleds +num < /dev/%I'" >> /etc/systemd/system/getty@.service.d/activate-numlock.conf
# cat /etc/systemd/system/getty@.service.d/activate-numlock.conf

# #==> 1 Numlock off in getty
# # because it didn't work in sbMb
# rm /etc/systemd/system/getty@.service.d/activate-numlock.conf

#=> 1 as root when jo 0

#==> python-pew 0 install
pacman -S python-pew

#==> python-pew 1 remove
pacman -Rs python-pew

#=> 1 as root when jo 1 when X

#==> AV remove PulseAudio
pacman -Rs zoom  # (also removes pulseaudio-alsa)
pacman -Rs pulsemixer  # (also removes pulseaudio)

#==> networking - LastPass CLI
pacman -S lastpass-cli

#=> 2 KDE 0
pacman -S kde-applications plasma
# phonon-qt5

# sshfs (for KDE Connect)
pacman -S sshfs

#=> 2 KDE 1 Partition Manager
# (it's not in Discover...)
pacman -S partitionmanager

#=> 2 KDE 2 check iwd.service (for Kdenetwork)
systemctl status iwd.service

#=> 2 wmctrl
pacman -S wmctrl

