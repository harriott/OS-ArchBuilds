#!/bin/bash
# vim: set sw=2:

# Sat 25 Sep 2021

# Full system backup
# ------------------
# this is only needed until I've setup  rsnapshot

# run this script from Knoppix:  bash rsyncBackup.sh

# query system
echo "rsync backup of system"
echo "0 LIP120s81A4"
echo "1 sbMb"
read -p "- enter 0 or 1 -> " i
disk=( LIP120s81A4 sbMb )
if ! [[ $i == '0' || $i == '1' ]]; then
  echo "must be 0 or 1"
  exit
fi
system=${disk[$i]}
echo "you're on $system"

# get backup destination
read -p 'enter last two characters of backup mount - /media/sdxx ' xx
media=/media/sd$xx
echo "backup mount is $media"
[ -d $media ] || echo "can't find $media" && exit
backdest=$media/$system-rsyncBackup
echo "backup directory is $backdest"
exit
[ -d $backdest ] || mkdir $backdest

# prepare the backup destination folder
date=$(date "+%F-%H-%M")
bfolder="$backdest/$date"
read -p "about to rsync to $bfolder - any key to continue" null

# do the backups
mkdir $bfolder
for sysfolder in boot etc home root usr var; do
  mkdir $bfolder/$sysfolder
  rsync -aAinvX $mnt/$sysfolder/ $bfolder/$sysfolder 2>&1 | tee $bfolder/$sysfolder.txt
done

