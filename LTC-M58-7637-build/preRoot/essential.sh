#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

loadkeys fr

# disks already partitioned with  gdisk
gdisk -l /dev/sda

# format & mount partitions
lsblk -l
mkswap /dev/sda2
swapon /dev/sda2
swapon -s  # should show /dev/sda2 has Priority -2
mkfs.ext4 /dev/sda3
mount /dev/sda3 /mnt
mkdir /mnt/home
mkfs.ext4 /dev/sda4
mount /dev/sda4 /mnt/home
# forgot sda5...

# Moto G4 plugged into back top right USB
#  ip link   reports it as   enp0s29f7u6
dhcpcd enp0s29f7u6
ping -c 3 8.8.8.8

# install the base packages
pacstrap /mnt base linux linux-firmware

# genfstab
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

# change root
arch-chroot /mnt  # kills this script

