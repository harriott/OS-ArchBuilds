#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 install to chroot
# as root:  bash build.sh

# #==> 0 environment variables

# # ARCHBUILDS=/home/jo/Dropbox/JH/IT_stack/onGitHub/ArchBuilds
# # ARCHBUILDS=/home/jo/mnt/ArchBuilds
# # ARCHBUILDS=/mnt/mnt/ArchBuilds
# # ARCHBUILDS=/run/media/jo/K8GBDT100/ArchBuilds

# # MACHINE=$ARCHBUILDS/LTC-M58-7637; echo $MACHINE

# #==> 1 prepare partitions
# loadkeys fr

# # disks already partitioned with  gdisk
# gdisk -l /dev/sda

# # format & mount partitions
# lsblk -l
# mkswap /dev/sda2
# swapon /dev/sda2
# swapon -s  # should show /dev/sda2 has Priority -2
# mkfs.ext4 /dev/sda3
# mount /dev/sda3 /mnt
# mkdir /mnt/home
# mkfs.ext4 /dev/sda4
# mount /dev/sda4 /mnt/home
# # forgot sda5...

# #==> 2 install essential stuff then chroot
# this script will be killed after this
. $ARCHBUILDS/build/0-to_chroot.sh

