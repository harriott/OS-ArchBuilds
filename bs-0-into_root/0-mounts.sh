#!/bin/bash
# vim: fdl=1 sw=2:

# $OSAB/bs-0-in_root/0-mounts.sh

mount /dev/sdb3 /mnt  # /
  mount /dev/sdb1 /mnt/boot
  mount /dev/sda1 /mnt/home  # so that gets into fstab
mount /dev/sdd1 /mnt  # K16GBDTG2  again

