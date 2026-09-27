#!/bin/bash
# vim: fdl=1:

# Joseph Harriott, mar 15 sept 2026

# bash $ABno/wlan0.sh ($OSAB/nodes-set/jo-0-Bash-X.sh)
# fcrontab:  @ 4 bash ~/Arch/wlan0.sh

#=> 0 get $machLg
source ~/.start  # $ABnm/Bash_start
  source ~/.export-Arch  # $ABno/Bash/export-Arch

#=> 1 backup connections
if [ $host = 'DOP3040D11S' ]; then
    mw="$machLg/wlan0"
else
    mw="$machLg/network/wlan0"
fi
[ -f $mw ] || touch $mw

# save current connection
echo "$(date +%y%m%d):$(ip -4 -br a | awk 'FNR==2 {print $3}'):$(iwgetid wlan0 --raw) $(date +%H%M)" >> $mw

# remove subsequent identical connections in a day
awk -i inplace '!($1 in a) {a[$1];print}' $mw
sed -i '/::/d' $mw
sed -i '/: /d' $mw

