#!/bin/bash
# vim: sw=2

# full system restore from an rsnapshot
# -------------------------------------
# cp $OSAB/nodes-root/backup/from_rescue_boot-rsyncSystemRestore.sh $rsnapshot/restore.sh
#  then from a rescue boot, cd into  $rsnapshot  for  bash restore.sh

# Joseph Harriott  Thu 27 Nov 2025

read -p "You are in a rescue environment? " sure
[ ! $sure ] || [ $sure != "y" ] && exit

# Check, then go:
echo "rsnapshot that you wish to restore from: "
read rs
if [ $rs ] && [ -d $rs ]; then
  if false; then
    read -p "going to restore  boot, etc, root, usr, var"
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
      rsync -aAivX --delete $rs/localhost/$sysfolder/ /$sysfolder
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
  fi
  read -p 'going to restore  home'
  rsync -a --info=progress2 $rs/localhost/home/ /mnt/home
fi

