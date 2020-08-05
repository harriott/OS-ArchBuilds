#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 prepare
loadkeys uk

# verify UEFI boot mode
ls /sys/firmware/efi/efivars

# check the bootable disk, already partitioned with  gdisk
gdisk -l /dev/sda

#=> 1 format needed partitions
# EFI
lsblk -l
mkfs.fat -F32 /dev/sda1

# /
mkfs.ext4 /dev/sda2

# swap
mkswap /dev/sda3
swapon /dev/sda3
swapon -s  # should show /dev/sda2 has Priority -2

# /home
mkfs.ext4 /dev/sda4

# /
mkfs.ext4 /dev/sda4

#=> 2 mount /
mount /dev/sda2 /mnt

#=> 3 create permanent mount points
# EFI
[ -d /mnt/efi ] || mkdir /mnt/efi

# /home
[ -d /mnt/home ] || mkdir /mnt/home

#=> 4 mount needed partitions
# EFI
mount /dev/sda1 /mnt/efi

# /home
mount /dev/sda4 /mnt/home

#=> 5 format extra partition
mkfs.ext4 /dev/sda5
# will be implemented later in fstab

#=> 6 update the system clock
timedatectl set-ntp true

#=> 7 install essential stuff & generate fstab
# 1 install the base packages
pacstrap /mnt base linux linux-firmware

# 2 genfstab
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

#=> 8 change root
arch-chroot /mnt  # kills this script

