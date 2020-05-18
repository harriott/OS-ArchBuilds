#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 install to chroot
# as root  bash <this_script>

#==> 0 environment variables
ARCHBUILDS=/bs/ArchBuilds

# #==> 1 prepare
# loadkeys uk

# # verify UEFI boot mode
# ls /sys/firmware/efi/efivars

# # disks already partitioned with  gdisk
# gdisk -l /dev/sda

# #==> 2 format needed partitions
# # EFI
# lsblk -l
# mkfs.fat -F32 /dev/sda1

# # /
# mkfs.ext4 /dev/sda2

# # swap
# mkswap /dev/sda3
# swapon /dev/sda3
# swapon -s  # should show /dev/sda2 has Priority -2

# # /home
# mkfs.ext4 /dev/sda4

#==> 3 mount /
mount /dev/sda2 /mnt

# #==> 4 create permanent mount points
# # EFI
# [ -d /mnt/efi ] || mkdir /mnt/efi

# # /home
# [ -d /mnt/home ] || mkdir /mnt/home

#==> 5 mount needed partitions
# EFI
mount /dev/sda1 /mnt/efi

# /home
mount /dev/sda4 /mnt/home

# #==> 6 format extra partition
# # these will be implemented later by fstab
# # WD30EZRZ-1 - big enough for my Dropbox
# mkfs.ext4 /dev/sda5
# # WD30EZRZ-2 - for anything else
# mkfs.ext4 /dev/sda6

#==> 7 install essential stuff then chroot
# this script will be killed after this
. $ARCHBUILDS/build-root-subScripts/0-to_chroot.sh

