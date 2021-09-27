#!/bin/bash
# vim: set sw=2:

# Mon 27 Sep 2021

# Full system backup
# ------------------
# this is only needed until I've setup  rsnapshot

# -----------------------------
# run this script from Arch ISO
# -----------------------------

# UTC -> CEST:
#  timedatectl set-timezone Europe/Paris

# WAN, if needed:
#  bash /mnt/IT_stack/unix_like/LIP120s81A4-iwctl.sh

# LIP120s81A4:
#  mount a USB drive:  mount /dev/sdxx /mnt
#  mkdir /as
#  mount Arch system:  mount /dev/mmcblk0p3 /as
#  bash /mnt/IT_stack/onGitHub/ArchBuilds/root/rsyncBackup.sh

# check the source mount
if [ -d /as ]; then
  echo "the following directories will be backed up"
  find /as -mindepth 1 -maxdepth 1 -type d | grep -E 'boot|etc|home|root|usr|var'
else
  echo "/as/ ain't there"
  exit
fi

# prepare the backup destination directory
[ -d /mnt/rsyncBackup ] || mkdir /mnt/rsyncBackup
date=$(date "+%F-%H-%M")
bd="/mnt/rsyncBackup/$date"
read -p "about to rsync to $bd - any key to continue" null

# do the backups
mkdir $bd
for sysfolder in boot etc home root usr var; do
  mkdir $bd/$sysfolder
  rsync -aAinvX \as/$sysfolder/ $bd/$sysfolder 2>&1 | tee $bd/$sysfolder.txt
done

