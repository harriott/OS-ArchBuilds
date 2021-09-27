#!/bin/bash
# vim: set sw=2:

# Mon 27 Sep 2021

# Full system backup
# ------------------
# this is only needed until I've setup  rsnapshot

# run this script from Knoppix:  bash rsyncBackup.sh

# query machine
echo "rsync backup of system"
echo "0 LIP120s81A4"
echo "1 sbMb"
read -p "- enter 0 or 1 -> " mi
disk=(
  LIP120s81A4 /media/mmcblk0p3 \
  sbMb ? \
)
if ! [[ $mi == '0' || $mi == '1' ]]; then
  echo "must be 0 or 1"
  exit
fi
mi=$mi*2
machine=${disk[$mi]}
echo "you're on $machine"

# check the source mount
sm=${disk[$mi+1]}
if [ -d $sm ]; then
  echo "the following directories will be backed up"
  find $sm -mindepth 1 -maxdepth 1 -type d
else
  echo "$sm ain't there"
  exit
fi

# get backup destination
read -p 'enter last two characters of backup mount - /media/sdxx ' xx
media=/media/sd$xx
echo "backup mount is $media"
if [ ! -d $media ]; then
  echo "can't find $media"
  exit
fi
backdest=$media/$machine-rsyncBackup
echo "backup directory is $backdest"
[ -d $backdest ] || mkdir $backdest

# prepare the backup destination directory
date=$(date "+%F-%H-%M")
bd="$backdest/$date"
read -p "about to rsync to $bd - any key to continue" null

# do the backups
mkdir $bd
for sysfolder in boot etc home root usr var; do
  mkdir $bd/$sysfolder
  rsync -aAinvX $sm/$sysfolder/ $bd/$sysfolder 2>&1 | tee $bd/$sysfolder.txt
done

