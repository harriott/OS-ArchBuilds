#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

#=> 2 install essential stuff then chroot
# install the base packages
pacstrap /mnt base dhcpcd linux linux-firmware

# genfstab
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

# change root
arch-chroot /mnt  # kills this script

