#!/bin/bash
# vim: set fdl=2 sw=2:

if [[ $(id -u) > 0 ]]; then
  echo "Run this again, as root!"
  exit
fi

#=> 1 Rootkit Hunter
rkhunter --propupd  # update the file properties database
rkhunter -C  # --config-check
rkhunter -c -sk  # --check --skip-keypress

#==> backup the log
[ -d ~/Arch ] || exit
jHM=$(date "+%j-%H%M")
cp /var/log/rkhunter.log ~/Arch/rkhunter-$jHM.log
chown jo:jo ~/Arch/rkhunter-$jHM.log

