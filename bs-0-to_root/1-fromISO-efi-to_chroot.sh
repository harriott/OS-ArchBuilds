#!/bin/bash

# $OSAB/bs-0-to_root/1-fromISO-efi-to_chroot.sh

set -euv
trap read debug  # puts a read request after each executable line

#=> 00 prepare
loadkeys uk

# #==> big SSD
# EFI=sda1
# root=sda2
# swap=sda3
# home=sda4

#==> flash
lsblk /dev/mmcblk0
EFI=mmcblk0p1
root=mmcblk0p3
swap=mmcblk0p2
home=mmcblk1p1

# #=> 01 format needed partitions
# # EFI
# lsblk -l
# mkfs.fat -F32 /dev/$EFI

# # /
# mkfs.ext4 /dev/$root

# # swap
# mkswap /dev/$swap

# # /home
# # mkfs.ext4 /dev/$home

#=> 02 mount /
mount /dev/$root /mnt
ls /mnt

# #=> 02 swapon
# swapon /dev/$swap
# swapon -s  # should show /dev/$swap has Priority -2

# #=> 03 create permanent mount points
# # EFI
# [ -d /mnt/efi ] || mkdir /mnt/efi

# # /home
# # [ -d /mnt/home ] || mkdir /mnt/home

#=> 04 mount needed partitions
# EFI
mount /dev/$EFI /mnt/efi
ls /mnt/efi

# /home
# mount /dev/$home /mnt/home

# #=> 05 format extra partition
# mkfs.ext4 /dev/sda5
# # will be implemented later in fstab

#=> 06 update the system clock
timedatectl set-ntp true

#=> 07 upgrade archlinux-keyring
# might be required
pacman -Sy archlinux-keyring

# #=> 08 install essential stuff
# pacstrap /mnt base linux linux-firmware

# #=> 09 generate fstab
# genfstab -U /mnt >> /mnt/etc/fstab
# cat /mnt/etc/fstab

#=> 10 change root
arch-chroot /mnt  # kills this script

