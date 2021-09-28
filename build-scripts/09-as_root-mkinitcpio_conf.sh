#!/bin/bash
# vim: fdl=1 sw=2:

# cd /; bash ArchBuilds/build-scripts/03-cloneArchBuilds.sh; cd ArchBuilds/build-scripts

if [ ! -d /mnt/IT_stack ]; then
  echo "/mnt/IT_stack ain't there"
  exit
fi

#=> modify mkinitcpio.conf for repositioning of /usr
date=$(date "+%F-%H-%M")
sed 's#fsck)#fsck shutdown usr)#' /etc/mkinitcpio.conf > /mnt/mkinitcpio-$date.conf
cp /mnt/mkinitcpio-$date.conf /etc/mkinitcpio.conf
grep 'd f' /etc/mkinitcpio.conf

#=> grab the UUIDs
ls -l /dev/disk/by-uuid/ > /mnt/UUIDs.txt

