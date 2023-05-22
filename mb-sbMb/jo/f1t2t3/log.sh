#!/bin/bash

# Joseph Harriott, Mon 23 Aug 2021

# save indications of CPU temperature for my Gigabyte GA-970A-DS3P rev.2.1
# fcrontab:  @ 1 bash ~/Arch/f1t2t3/log.sh

lf=~/Arch/f1t2t3/f1t2t3.log  # f1t2t3 log file
# touch $lf

btc=$(date -d "$(uptime -s)" +%y%m%d-%H%M)  # boot time compact
echo -e "$btc  $(date +%y%m%d-%H%M)  $(bash ~/Arch/f1t2t3/f1t2t3.sh)\n$(cat $lf)" > $lf
sed -i '1s/°C//g' $lf  # remove centigrade because it don't appear when called from fcron
sed -i '1s/ $//' $lf  # remove a trailing space

