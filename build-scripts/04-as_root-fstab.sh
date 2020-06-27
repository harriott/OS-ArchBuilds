#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=/bs/ArchBuilds

# #=> fstab for HD103SJ
# # add HD103SJ to fstab
# echo "LABEL=HD103SJ /mnt/HD103SJ  ext4  defaults  0  2" >> /etc/fstab

# cp /etc/fstab $MACHINE/fstab
# chown jo:jo $MACHINE/fstab
# halt -p

#=> mount rest of WD30EZRZ
# lsblk -f  indicated
e2label /dev/sda5 WD30EZRZ-1
lsblk -rno LABEL /dev/sda5  # check
e2label /dev/sda6 WD30EZRZ-2
lsblk -rno LABEL /dev/sda6  # check
blkid  # confirmation
mkdir /mnt/WD30EZRZ-1
mkdir /mnt/WD30EZRZ-2

# add WD30EZRZ-1 to fstab
echo "LABEL=WD30EZRZ-1 /mnt/WD30EZRZ-1  ext4  defaults  0  2" >> /etc/fstab
# add WD30EZRZ-2 to fstab
echo "LABEL=WD30EZRZ-2 /mnt/WD30EZRZ-2  ext4  defaults  0  2" >> /etc/fstab

cp /etc/fstab /bs/fstab  # don't forget to save this!
reboot

