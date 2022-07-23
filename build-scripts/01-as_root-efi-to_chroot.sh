#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 prepare
loadkeys uk

# #==> big SSD
# EFI=sda1
# root=sda2
# swap=sda3
# home=sda4

#==> flash
EFI=mmcblk0p1
root=mmcblk0p3
swap=mmcblk0p2
# home=mmcblk1p1

#=> 1 format needed partitions
# EFI
lsblk -l
mkfs.fat -F32 /dev/$EFI

# /
mkfs.ext4 /dev/$root

# swap
mkswap /dev/$swap
swapon /dev/$swap
swapon -s  # should show /dev/$swap has Priority -2

# /home
# mkfs.ext4 /dev/$home

#=> 2 mount /
mount /dev/$root /mnt

#=> 3 create permanent mount points
# EFI
[ -d /mnt/efi ] || mkdir /mnt/efi

# /home
# [ -d /mnt/home ] || mkdir /mnt/home

#=> 4 mount needed partitions
# EFI
mount /dev/$EFI /mnt/efi

# /home
# mount /dev/$home /mnt/home

# #=> 5 format extra partition
# mkfs.ext4 /dev/sda5
# # will be implemented later in fstab

#=> 6 update the system clock
timedatectl set-ntp true

#=> 7 install essential stuff
pacstrap /mnt base linux linux-firmware

#=> 8 generate fstab
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

#=> 9 change root
arch-chroot /mnt  # kills this script

