#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

## after Reflector
pacman -Syyuu

# framebuffer, Sudo & Tig
pacman -S fbset sudo tig

# Swap
# check that the default is 60
cat /sys/fs/cgroup/memory/memory.swappiness
# show that  /etc/sysctl.d  is empty
# fix lower value, which will become effective after reboot
echo "vm.swappiness=10" > /etc/sysctl.d/99-sysctl.conf
ls /etc/sysctl.d

# User jo, creating the home directory and adding to group wheel
useradd -m -G wheel jo
until passwd jo; do echo "try again"; done

# activate wheel group
sed -i '0,/%wheel/ s/^# %wheel/%wheel/' /etc/sudoers
grep wheel /etc/sudoers
# check that  /etc/sudoers  parses OK
visudo -c -f /etc/sudoers

# display frame buffer information
fbset -i

# meson, for auracle later
pacman -S meson

# Pacmatic
pacman -S pacmatic python-html2text

# NTFS-3G
pacman -S ntfs-3g

# Numlock
mkdir /etc/systemd/system/getty@.service.d
echo [Service] > /etc/systemd/system/getty@.service.d/activate-numlock.conf
echo "ExecStartPre=/bin/sh -c 'setleds +num < /dev/%I'" >> /etc/systemd/system/getty@.service.d/activate-numlock.conf
cat /etc/systemd/system/getty@.service.d/activate-numlock.conf

# Secure Shell
pacman -S openssh

# DNS Lookup utility
pacman -S bind-tools

# Wget
pacman -S wget

# ClamAV
pacman -S clamav
freshclam

# ncdu
pacman -S ncdu

# pkgfile
pacman -S pkgfile
pkgfile -u
systemctl enable pkgfile-update.timer
systemctl list-timers

# mlocate
pacman -S mlocate
updatedb

# rhash
pacman -S rhash

# AlsaUtils
pacman -S alsa-utils

# p7zip
pacman -S p7zip

# pkgstats
pacman -S pkgstats

# lsof
pacman -S lsof

# Neofetch
pacman -S neofetch

# iotop
pacman -S iotop

# fzy
pacman -S fzy

# sysstat
pacman -S sysstat

# ripgrep
pacman -S ripgrep

# exa
pacman -S exa

# Git
pacman -S git

# firewalld
pacman -S firewalld
systemctl enable firewalld
systemctl start firewalld
reboot  # maybe wasn't necessary

