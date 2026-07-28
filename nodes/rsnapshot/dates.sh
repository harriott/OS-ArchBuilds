#!/bin/sh
# vim: fdl=1 sw=2:

# check my rsnapshots

# bash $ABno/rsnapshot/dates.sh

rc () {
  r1=$rsnapshot/$1
  if [ -d $r1 ]; then
    printf "${tpf5}$1${tpfn} "
    stat -c '%y' $r1/*/home/jo/.bash_history
  fi
} # rsnapshot checks
rc .sync
rc aaa.0
rc aaa.1
rc aaa.2
rc aaa.3
rc aaa.4
rc aaa.5
rc aaa.6
rc aaa.7
rc aaa.8
rc aaa.9
rc bbb.0
rc bbb.1

