#!/bin/bash
# vim: set et tw=0:

# Full system backup
# ------------------

# Run this script from a Live ISO:  bash <path-to-script>/rsyncBackup.sh

# Backup destinations when running from a live ISO:
backdest=/mnt/mnt/mnt1/LTC-M58-7637-system-rsyncBackup
# backdest=/mnt/mnt/WD1001FALS/AVT661-system-rsyncBackup
# backdest=/run/media/jo/MK6021GAS/LTC-M58-7637-system-rsyncBackup
mnt=/mnt

# Backup destinations when running from root:

# Possibly
# mkdir $backdest

# Labels for backup name
date=$(date "+%F-%H-%M")
bfolder="$backdest/$date"
echo "Intending to rsync-backup of some of what's on /mnt to $bfolder"

# Check, then go:
echo -n "Have you logged out of your user accounts, and are ready to backup? (y/N): "
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
    for sysfolder in boot etc home root usr; do
      mkdir $bfolder/$sysfolder
      rsync -aAivX $mnt/$sysfolder/ $bfolder/$sysfolder 2>&1 | tee $bfolder/$sysfolder.txt
    done
  fi
fi
