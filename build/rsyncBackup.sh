#!/bin/bash
# vim: set et tw=0:

# Full system backup
# ------------------

# Run this script from a Live ISO:  bash /mnt/home/jo/Arch/rsyncBackup.sh

# Backup destination
backdest=/mnt/mnt/9QG2FFEE/AcerVeritonT661-rsyncBackup

# Labels for backup name
date=$(date "+%F-%H-%M")
bfolder="$backdest/$date"
echo "Intending to rsync-backup of some of what's on /mnt to $bfolder"

# Check, then go:
echo -n "You have booted from a Live ISO, and are you ready now to backup? (y/N): "
read gobu
if [ $gobu ]; then
  if [ $gobu = "y" ]; then
    # Check if target directory exists
    if [ ! -d $backdest ]; then
      echo "The target directory ain't there, quitting."
      exit
    fi
    echo "rsync-ing:"
    mkdir $bfolder
    for sysfolder in boot etc home root usr var; do
      mkdir $bfolder/$sysfolder
      rsync -aAivX /mnt/$sysfolder/ $bfolder/$sysfolder 2>&1 | tee $bfolder-$sysfolder.txt
    done
  fi
fi
