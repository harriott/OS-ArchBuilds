#!/bin/bash
# vim: set sw=2:

# Tue 07 Dec 2021

# Full system backup
# ------------------
# this is only needed until I've setup  rsnapshot
#  symlinked in  $bs/05-root_symlinks.sh

# -----------------------------
# run this script from Arch ISO
# -----------------------------

# UTC -> CEST:
#  timedatectl set-timezone Europe/Paris

# LIP120s81A4:
#  mount a USB drive:  mount /dev/sdxx /mnt
#  mkdir /as /ah
#  mount Arch system:
#   mount /dev/mmcblk0p3 /as
#   mount /dev/mmcblk1p2 /ah
#  bash /mnt/IT_stack/onGitHub/ArchBuilds/root/rsyncBackup.sh

# check the source mount
if [ -d /as ]; then
  echo "the following directories will be backed up"
  find /as -mindepth 1 -maxdepth 1 -type d | grep -E 'boot|etc|home|root|usr|var' | sort
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
  rsync -aiv /as/$sysfolder/ $bd/$sysfolder 2>&1 | tee $bd/$sysfolder.txt
done
if [ -d /ah ]; then
  rsync -aiv /ah/ $bd/home 2>&1 | tee $bd/home.txt
fi

