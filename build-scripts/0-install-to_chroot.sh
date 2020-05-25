#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 update the system clock
timedatectl set-ntp true

# #=> 1 install essential stuff & generate fstab
# # 1 install the base packages
# pacstrap /mnt base linux linux-firmware

# # 2 genfstab
# genfstab -U /mnt >> /mnt/etc/fstab
# cat /mnt/etc/fstab

#=> 2 change root
arch-chroot /mnt  # kills this script

