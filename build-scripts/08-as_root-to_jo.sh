#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

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

# #=> 1 softwares - networking 1
# # iNet Wireless Daemon
# pacman -S iwd
# systemctl enable iwd.service --now
# systemctl status iwd.service
# true

# # NetworkManager
# pacman -S networkmanager
# systemctl enable NetworkManager.service --now

#=> 1 softwares - networking 2
# NetworkManager
systemctl status NetworkManager.service | cat
true

# Wget
pacman -S wget

#=> 1 softwares - file manage
# bat
pacman -S bat

# broot
pacman -S broot

# exa
pacman -S exa

# fd
pacman -S fd

# fzf
pacman -S fzf

# mlocate
pacman -S mlocate
updatedb

# ncdu
pacman -S ncdu

# p7zip
pacman -S p7zip

# rhash
pacman -S rhash

# ripgrep
pacman -S ripgrep

# rsync
pacman -S rsync

# trash-cli
pacman -S trash-cli

# tree
pacman -S tree

#=> 1 softwares - system
# Bashtop
sudo pacman -S bashtop

# fcron
pacman -S fcron
systemctl enable fcron.service

# glances
pacman -S glances

# meson, for auracle later
pacman -S meson

# NTFS-3G
pacman -S ntfs-3g

# pacman-contrib, for paccache
pacman -S pacman-contrib

# pacutils
pacman -S pacutils

# pkgfile - for finding possible packages
pacman -S pkgfile
pkgfile -u
systemctl enable pkgfile-update.timer --now
systemctl list-timers

# pkgstats
pacman -S pkgstats

#=> 1 swappiness to 10
# check that the default is 60
cat /sys/fs/cgroup/memory/memory.swappiness
# show that  /etc/sysctl.d  is empty
ls /etc/sysctl.d
# fix lower value, which will become effective after reboot
echo "vm.swappiness=10" > /etc/sysctl.d/99-sysctl.conf
ls /etc/sysctl.d

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

