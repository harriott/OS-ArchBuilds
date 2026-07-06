#!/bin/sh
# vim: fdl=1 sw=2:

# check my rsnapshots

# bash $ABno/rsnapshots.sh

rc () {
  echo "${tpf5}$1${tpfn}"
  head -n1 $rsnapshot/$1/$host/home/jo/Arch/f1t2t3/f1t2t3.log
  stat -c '%y %n' $rsnapshot/$1/$host/$TeNo/md-JH-Private/Private.md
  stat -c '%y %n' $rsnapshot/$1/$host/var/log/wtmp
} # rsnapshot checks
rc .sync
rc aaa.0

