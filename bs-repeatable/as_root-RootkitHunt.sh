#!/bin/bash
# vim: set fdl=1 sw=2:

# bash $OSAB/bs-repeatable/as_root-RootkitHunt.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 Rootkit Hunter
rkhunter --propupd  # update the file properties database
rkhunter -C  # --config-check
rkhunter -c -sk  # --check --skip-keypress

#=> 1 backup the log
A=/home/jo/Arch
[ -d $A ] || exit
jHM=$(date "+%j-%H%M")
l="/home/jo/Arch/root/rkhunter-$jHM.log" # ~/Arch/root
cp /var/log/rkhunter.log $l
chown jo:jo $l
echo "now look in $l"

