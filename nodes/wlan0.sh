#!/bin/bash
# vim: fdl=1:

# Joseph Harriott, lun 17 août 2026

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

echo "$(date +%y%m%d-%H%M) $(ip -4 -br a | awk 'FNR==2 {print $3}') $(iwgetid wlan0 --raw)" >> $mw

