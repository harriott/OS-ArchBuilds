#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ping -c 3 8.8.8.8

#=> 0 time
# time zone
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime

# system clock
timedatectl set-ntp true
timedatectl status
# doesn't show local correction

# hardware clock
hwclock --systohc

#=> 0 locale (GB or Fr)
# locale
sed -i 's/^#en_GB.UTF-8/en_GB.UTF-8/' /etc/locale.gen
sed -i 's/^#en_US.UTF-8/en_US.UTF-8/' /etc/locale.gen
sed -i 's/^#fr_FR.UTF-8/fr_FR.UTF-8/' /etc/locale.gen
cat /etc/locale.gen | grep -v '^#'
locale-gen
cat /etc/locale.conf  # shows it ain't there
# echo LANG=fr_FR.UTF-8 > /etc/locale.conf
echo LANG=en_GB.UTF-8 > /etc/locale.conf
cat /etc/vconsole.conf  # shows it ain't there
# echo KEYMAP=fr > /etc/vconsole.conf
echo KEYMAP=uk > /etc/vconsole.conf

#=> 1 host
# cat /etc/hostname   shows it ain't there
# echo ltcm58 > /etc/hostname
echo sbMb > /etc/hostname
# /etc/hosts
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
# echo "127.0.1.1 avt661.localdomain avt661" >> /etc/hosts
echo "127.0.1.1 sbMb.localdomain sbMb" >> /etc/hosts

#=> 2 better mirrorlist
pacman -S reflector
. 01-when_chroot-reflector.sh

#=> 3 bootloader
# 0 GRUB, Network Time Protocol
pacman -S efibootmgr grub ntp

# 1 Microcode
pacman -S amd-ucode
# pacman -S intel-ucode

#=> 4 bootloader
# 2 install GRUB
grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB

# 3 generate  grub.cfg
grub-mkconfig -o /boot/grub/grub.cfg

#=> 5 final tweaks
# dhcpcd
pacman -S dhcpcd

# udisks
pacman -S udisks2

# root password
until passwd; do echo 'try again'; done

#=> 6 finish
# Quit chroot now, and reboot!

