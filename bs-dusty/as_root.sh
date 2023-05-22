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

#=> 1 as root - sshd_config
sudo cp $machBld/etc/sshd_config /etc/ssh/sshd_config

#=> 1 as root - wifi - 8192eu 0 blacklist rtl8xxxu
echo "blacklist rtl8xxxu" | sudo tee /etc/modprobe.d/rtl8xxxu.conf

#=> 1 as root - wifi - 8192eu 1 remove blacklist
sudo rm /etc/modprobe.d/rtl8xxxu.conf

#=> 1 as root - wifi - 8192eu-dkms 0 install
# for  TP-Link TL-WN821N
# needs  appmenu-gtk-module dkms linux-headers
cd ~/Arch/AUR
rm -fr 8192eu-dkms # (-f is needed for some weird files therein)
git clone https://aur.archlinux.org/8192eu-dkms.git
cd 8192eu-dkms
gvim -c "silent! /Mange" PKGBUILD
makepkg -sic
#  (2/2) Install DKMS modules  takes a long time
reboot

#=> 1 as root - wifi - 8192eu-dkms 1 remove
sudo pacman -Rs 8192eu-dkms
reboot

#=> 1 as root - wifi - rtl8192eu
# (didn't get  TL-WN821N  up)
gdAUR rtl8192eu
gvim PKGBUILD
gvim -c "silent! /Mange" PKGBUILD
makepkg -sic

#=> 2 as root when jo 0

#==> python-pew 0 install
pacman -S python-pew

#==> python-pew 1 remove
pacman -Rs python-pew

#=> 2 as root when jo 1 when X

#==> AV remove PulseAudio
pacman -Rs zoom  # (also removes pulseaudio-alsa)
pacman -Rs pulsemixer  # (also removes pulseaudio)

#==> networking - LastPass CLI
pacman -S lastpass-cli

#=> 3 KDE 0
pacman -S kde-applications plasma
# phonon-qt5

# sshfs (for KDE Connect)
pacman -S sshfs

#=> 3 KDE 1 Partition Manager
# (it's not in Discover...)
pacman -S partitionmanager

#=> 3 KDE 1 check iwd.service (for Kdenetwork)
systemctl status iwd.service

#=> 3 KDE 1 Event Calendar
gAUR plasma5-applets-eventcalendar
nvim PKGBUILD
makepkg -sic

#=> 3 wmctrl
pacman -S wmctrl

