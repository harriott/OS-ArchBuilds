#!/bin/bash

# Joseph Harriott, Fri 31 May 2024

# save indications of CPU temperature for my Gigabyte GA-970A-DS3P rev.2.1
# bash $machBld/jo/f1t2t3/log.sh
#  fcrontab:  @ 1 bash ~/Arch/f1t2t3/log.sh
#  symlinked in  $OSAB/nodes-set/jo-0.sh

# DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -u critical "f1t2t3/log.sh $(date +%H%M)"  # uncomment to check if this script is being called

lf="/home/jo/Arch/f1t2t3/f1t2t3.log"  # f1t2t3 log file
# touch $lf

btc=$(date -d "$(uptime -s)" +%y%m%d-%H%M)  # boot time compact
echo -e "$btc  $(date +%y%m%d-%H%M)  $(bash ~/Arch/f1t2t3/f1t2t3.sh)\n$(cat $lf)" > $lf
sed -i '1s/°C//g' $lf  # remove centigrade because it don't appear when called from fcron
sed -i '1s/ $//' $lf  # remove a trailing space

