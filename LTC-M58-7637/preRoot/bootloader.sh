#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

# time zone
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

# system clock
timedatectl set-ntp true
timedatectl status
# doesn't show local correction

# hardware clock
hwclock --systohc

# locale
sed -i 's/^#en_GB.UTF-8/en_GB.UTF-8/' /etc/locale.gen
sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
sed -i 's/^#fr_FR.UTF-8/fr_FR.UTF-8/' /etc/locale.gen
cat /etc/locale.gen | grep -v '^#'
locale-gen
# cat /etc/locale.conf   shows it ain't there
echo LANG=fr_FR.UTF-8 > /etc/locale.conf
# cat /etc/vconsole.conf  shows it ain't there
echo KEYMAP=fr > /etc/vconsole.conf

# Networking
# cat /etc/hostname   shows it ain't there
echo ltcm58 > /etc/hostname
# /etc/hosts
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 avt661.localdomain avt661" >> /etc/hosts

# Updates
pacman -Syu

# Grub, Microcode, Network Time Protocol
pacman -S grub intel-ucode ntp
# lsblk -f  indicates sda
grub-install --target=i386-pc /dev/sda
# re-generate  grub.cfg
grub-mkconfig -o /boot/grub/grub.cfg

# udisks
pacman -S udisks2

# root password
passwd

# quit chroot
exit

