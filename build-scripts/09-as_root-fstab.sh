#!/bin/bash
# vim: fdc=1 fdl=1 fdm=expr ft=shbuild:

drives=(
  '9QF57J6Q' \
  # 'HD103SJ' \
  'SD480GSSDPlus' \
  # 'ST3320620AS' \
  'ST3320418AS' \
  # 'WD2000JD' \
  'WD30EZRZ' \
  )
for drive in "${drives[@]}"; do
    mkdir /mnt/$drive
    echo "LABEL=$drive /mnt/$drive  ext4  defaults  0  2" >> /etc/fstab
done
bf=/home/jo/k85-fstab
cp /etc/fstab $bf
chown jo:jo $bf
reboot

