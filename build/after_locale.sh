#!/bin/bash
# vim: set et tw=0:

# bash -x <thisfile>.sh

# Locale
# cat /etc/locale.conf   shows it ain't there
echo LANG=en_GB.UTF-8 > /etc/locale.conf
# cat /etc/vconsole.conf  shows it ain't there
echo KEYMAP=uk > /etc/vconsole.conf

# Networking
# cat /etc/hostname   shows it ain't there
echo avt661 > /etc/hostname
# /etc/hosts
echo "127.0.0.1 localhost" >> /etc/hosts
echo "::1       localhost" >> /etc/hosts
echo "127.0.1.1 avt661.localdomain avt661" >> /etc/hosts

# Grub, Microcode, Network Time Protocol
pacman -S grub intel-ucode ntp
# lsblk -f  indicates sda
grub-install --target=i386-pc /dev/sda
# re-generate  grub.cfg
grub-mkconfig -o /boot/grub/grub.cfg
