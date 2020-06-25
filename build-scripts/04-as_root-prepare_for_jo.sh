#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=/bs/ArchBuilds

# #=> 0 internet check
# systemctl status NetworkManager.service
# true
# ping -c 3 8.8.8.8

# #=> 1 after Grub
# # check local time correction
# timedatectl status

# # framebuffer, Sudo & Tig
# pacman -S fbset sudo tig
# # display all available frame buffer information
# fbset -i

# #=> 1 disable dhcpcd wait at start
# mkdir /etc/systemd/system/dhcpcd@.service.d
# cp $ARCHBUILDS/etc/systemd/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

# #=> 1 have boot messages stay on tty1
# cp $ARCHBUILDS/etc/systemd/noclear.conf /etc/systemd/system/getty@tty1.service.d/noclear.conf

# #=> 1 linux headers
# # for *8192eu*
# pacman -S linux-headers
# # - don't forget to  reboot !
# true

# #=> 1 softwares - appmenu-gtk-module 0
# # for *8192eu*
# pacman -S appmenu-gtk-module
# true

# #=> 1 softwares - appmenu-gtk-module 1
# pacman -Rs appmenu-gtk-module
# true

# #=> 1 softwares - dkms
# # for *8192eu*
# pacman -S dkms
# # - don't forget to  reboot !
# true

# #=> 1 softwares - info
# # htop
# pacman -S htop

# # iotop
# pacman -S iotop

# # lshw
# pacman -S lshw

# # lsof
# pacman -S lsof

# # man-db
# pacman -S man-db

# # man-pages
# pacman -S man-pages

# # Neofetch
# pacman -S neofetch

# # sysstat
# pacman -S sysstat

# #=> 1 softwares - networking
# # iNet Wireless Daemon
# pacman -S iwd
# systemctl enable iwd.service --now
# systemctl status iwd.service
# true

# # Wget
# pacman -S wget

# #=> 1 softwares - file manage
# # bat
# pacman -S bat

# # broot
# pacman -S broot

# # exa
# pacman -S exa

# # fd
# pacman -S fd

# # fzf
# pacman -S fzf

# # mlocate
# pacman -S mlocate
# updatedb

# # ncdu
# pacman -S ncdu

# # p7zip
# pacman -S p7zip

# # rhash
# pacman -S rhash

# # ripgrep
# pacman -S ripgrep

# # rsync
# pacman -S rsync

# # trash-cli
# pacman -S trash-cli

# # tree
# pacman -S tree

# #=> 1 softwares - system
# # Bashtop
# sudo pacman -S bashtop

# # fcron
# pacman -S fcron
# systemctl enable fcron.service

# # glances
# pacman -S glances

# # meson, for auracle later
# pacman -S meson

# # NTFS-3G
# pacman -S ntfs-3g

# # pacman-contrib, for paccache
# pacman -S pacman-contrib

# # pacutils
# pacman -S pacutils

# # pkgfile - for finding possible packages
# pacman -S pkgfile
# pkgfile -u
# systemctl enable pkgfile-update.timer --now
# systemctl list-timers

# # pkgstats
# pacman -S pkgstats

# #=> 1 swappinness to 10
# # check that the default is 60
# cat /sys/fs/cgroup/memory/memory.swappiness
# # show that  /etc/sysctl.d  is empty
# ls /etc/sysctl.d
# # fix lower value, which will become effective after reboot
# echo "vm.swappiness=10" > /etc/sysctl.d/99-sysctl.conf
# ls /etc/sysctl.d

#=> 1 Users
# activate wheel group
sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
grep wheel /etc/sudoers
# check that  /etc/sudoers  parses OK
visudo -c -f /etc/sudoers

# User jo, creating the home directory and adding to group wheel
useradd -m -G wheel jo
until passwd jo; do echo "try again"; done
cat /etc/passwd

#=> 2 end
# you're ready to reboot and login to jo

