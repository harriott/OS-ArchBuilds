#!/bin/bash
# vim: fdl=1 sw=2:

# $OSAB/bs-0-in_chroot/1-into_chroot.sh

set -v  # prints each statement here, including comments

#=> 0 mounts check
read -p "You've mounted  /, /boot, /home?"

#=> 1 prepare for chroot
# pacstrap /mnt base linux linux-firmware
pacstrap /mnt base linux linux-firmware tig
timedatectl set-timezone Europe/Paris
genfstab -U /mnt >> /mnt/etc/fstab
cat /mnt/etc/fstab

#=> 2 get into chroot
read -p "Going to chroot now"
arch-chroot -S /mnt  # losing red prompt

