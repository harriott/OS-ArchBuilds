#!/bin/bash
# vim: set fdl=1 sw=2:

# su > pw  then  bash $OSAB/bs-repeatable/su-RootkitHunt.sh

#=> 0 Rootkit Hunter
rkhunter --propupd  # update the file properties database
rkhunter -C  # --config-check
rkhunter -c -sk  # --check --skip-keypress

#=> 1 backup the log
A=/home/jo/Arch
[ -d $A ] || exit
# jHM=$(date "+%j-%H%M")
# l="/home/jo/Arch/root/rkhunter-$jHM.log" # ~/Arch/root
l="$machLg/rkhunter/$(date '+%y%m%d-%H%M').log"
cp /var/log/rkhunter.log $l
chown jo:jo $l
echo "now look in $l"

