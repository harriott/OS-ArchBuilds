#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> linux headers
# # for *8192eu*
# pacman -S linux-headers
# # - don't forget to  reboot !
# reboot

# #=> move /usr
dt=$(date "+%F-%H-%M")

# #==> grab the UUIDs
# ls -l /dev/disk/by-uuid/ > /mnt/UUIDs.txt

# #==> modify mkinitcpio.conf for repositioning of /usr
# sed 's#fsck)#fsck shutdown usr)#' /etc/mkinitcpio.conf > /mnt/mkinitcpio-$dt.conf
# cp /mnt/mkinitcpio-$dt.conf /etc/mkinitcpio.conf
# grep 'd f' /etc/mkinitcpio.conf

# #==> reset mkinitcpio.conf
# sed 's#fsck shutdown usr)#fsck)#' /etc/mkinitcpio.conf > /mnt/mkinitcpio-$dt.conf
# cp /mnt/mkinitcpio-$dt.conf /etc/mkinitcpio.conf
# grep 'd f' /etc/mkinitcpio.conf

# #=> 0 Numlock on in getty
# mkdir /etc/systemd/system/getty@.service.d
# echo [Service] > /etc/systemd/system/getty@.service.d/activate-numlock.conf
# echo "ExecStartPre=/bin/sh -c 'setleds +num < /dev/%I'" >> /etc/systemd/system/getty@.service.d/activate-numlock.conf
# cat /etc/systemd/system/getty@.service.d/activate-numlock.conf

# #=> 1 Numlock off in getty
# # because it didn't work in sbMb
# rm /etc/systemd/system/getty@.service.d/activate-numlock.conf

