#!/bin/bash

if [[ $(id -u) > 0 ]]; then
  echo "Run this as root!"
  exit
fi

drives=(
  # '9QF57J6Q' \
  # 'HD103SJ' \
  # 'SD480GSSDPlus' \
  'SDEP128G' \
  # 'ST3320620AS' \
  # 'ST3320418AS' \
  # 'WD2000JD' \
  # 'WD30EZRZ' \
  )
for drive in "${drives[@]}"; do
    mkdir /mnt/$drive
    echo "LABEL=$drive /mnt/$drive  ext4  defaults  0  2" >> /etc/fstab
done
bf=/home/jo/fstab-l9s
cp /etc/fstab $bf
chown jo:jo $bf
cat $bf

echo "now reboot"

