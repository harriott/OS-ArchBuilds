#!/bin/bash
# vim: set et tw=0:

# Full system backup
# ------------------

# Joseph Harriott  Wed 13 May 2020

# run this script from root

# Check, then go:
echo "Stopping rsnapshot-hourly.timer"
systemctl stop rsnapshot-hourly.timer
echo "Snapshot that you wish to restore from: "
read snapshot
if [ $snapshot ]; then
  if [ -d $snapshot ]; then
    for sysfolder in boot etc root usr; do
      rsync -aAivX --delete $snapshot/localhost/$sysfolder/ /$sysfolder
      # -a => archive mode; equals -rlptgoD
      #   -D => same as --devices --specials
      #   -g => preserve group
      #   -o => preserve owner
      #   -p => preserve permissions
      #   -r => recurse into directories
      #   -t => preserve modification times
      # -A => preserve ACLs (implies -p)
      # -X => preserve extended attributes
      # --delete => delete extraneous files from dest dirs
      [ $snapshot = 'usr' ] || ( echo "- any key to continue"; read pause )
    done
  fi
fi
systemctl start rsnapshot-hourly.timer

