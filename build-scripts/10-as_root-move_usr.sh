#!/bin/bash
# vim: fdl=1 sw=2:

if [ ! -d /mnt/IT_stack ]; then
  echo "/mnt/IT_stack ain't there"
  exit
fi # checking that the right USB key is mounted
dt=$(date "+%F-%H-%M")

#=> grab fstab
cp /etc/fstab /mnt/fstab-$dt

# #=> grab the UUIDs
# ls -l /dev/disk/by-uuid/ > /mnt/UUIDs.txt

# #=> modify mkinitcpio.conf for repositioning of /usr
# sed 's#fsck)#fsck shutdown usr)#' /etc/mkinitcpio.conf > /mnt/mkinitcpio-$dt.conf
# cp /mnt/mkinitcpio-$dt.conf /etc/mkinitcpio.conf
# grep 'd f' /etc/mkinitcpio.conf

#=> reset mkinitcpio.conf
sed 's#fsck shutdown usr)#fsck)#' /etc/mkinitcpio.conf > /mnt/mkinitcpio-$dt.conf
cp /mnt/mkinitcpio-$dt.conf /etc/mkinitcpio.conf
grep 'd f' /etc/mkinitcpio.conf

