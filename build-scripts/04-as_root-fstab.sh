#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

# #=> fstab for HD103SJ
# # add HD103SJ to fstab
# echo "LABEL=HD103SJ /mnt/HD103SJ  ext4  defaults  0  2" >> /etc/fstab

# cp /etc/fstab $MACHINE/fstab
# chown jo:jo $MACHINE/fstab
# halt -p

#=> mount rest of WD30EZRZ
# lsblk -f  indicated
mkfs.ext4 -L WD30EZRZ-1 /dev/sda5
lsblk -rno LABEL /dev/sda5  # check
mkfs.ext4 -L WD30EZRZ-2 /dev/sda6
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

