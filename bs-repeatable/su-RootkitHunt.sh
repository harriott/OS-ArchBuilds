#!/bin/bash
# vim: set fdl=1 sw=2:

# Thu 27 Nov 2025

# su > root pw  then  bash $OSAB/bs-repeatable/su-RootkitHunt.sh

#=> 0 Rootkit Hunter
rkhunter --propupd  # update the file properties database
rkhunter -C  # --config-check
rkhunter -c -sk  # --check --skip-keypress

#=> 1 backup the log
A=/home/jo/Arch
[ -d $A ] || exit
dt=$(date '+%y%m%d-%H%M')
l="$machLg/rkhunter/$dt.log"
cp /var/log/rkhunter.log $l
chown jo:jo $l
echo 'now look in  $machLg/rkhunter/'$dt'.log'
# e $machLg/rkhunter
# /[ Warning ]

