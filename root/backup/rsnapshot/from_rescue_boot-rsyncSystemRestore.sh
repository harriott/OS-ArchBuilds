#!/bin/bash

# Full system restore from an rsnapshot
# -------------------------------------
# su in  $rsnapshot  for  bash from_rescue_boot-rsyncSystemRestore.sh

# Joseph Harriott  Thu 04 Jan 2024

read -p "You are in a rescue environment? " sure
[ ! $sure ] || [ $sure != "y" ] && exit

# Check, then go:
echo "Snapshot that you wish to restore from: "
read snapshot
if [ $snapshot ]; then
  if [ -d $snapshot ]; then
    for sysfolder in boot etc root usr var; do
      # (bin  a symlink for usr/bin)
      # boot
      # (dev)
      # etc
      # (home)
      # (lib  a symlink to usr/lib)
      # (li64b  another symlink to usr/lib)
      # (lost+found)
      # (mnt)
      # (opt  exceptional softwares, also used by AUR dropbosx)
      # (proc  virtual)
      # root
      # (run  data since boot)
      # (sbin  a symlink to usr/bin)
      # (sys  virtual)
      # (tmp)
      # usr
      # var  a mixed bag, including pacman stuff
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
    done
    rsync -aAivX --delete $snapshot/localhost/home/ /mnt/home
  fi
fi

