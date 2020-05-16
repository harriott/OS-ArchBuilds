#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# update the system clock
timedatectl set-ntp true

#=> 1 better mirrorlist
pacman -S reflector
cd /etc/pacman.d
reflector --country France --age 12 --protocol https --sort rate --save mirrorlist
cat mirrorlist
pacman -Syyuu

#=> 2 install essential stuff then chroot
# 1 install the base packages
pacstrap /mnt base dhcpcd linux linux-firmware

# 2 genfstab
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

# 3 change root
arch-chroot /mnt  # kills this script

