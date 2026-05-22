#!/bin/bash
# vim: fdl=1:

# Joseph Harriott, Wed 20 May 2026

# $AjB/bash_history.sh ($OSAB/nodes-set/jo-0-Bash-X.sh)

# robustly save my BASH history, for finding ancient commands
# fcrontab:  @ 5 bash ~/Arch/bash_history.sh
# changes here are instantly effected

# DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -u critical "bash_history.sh $(date +%H%M)" # - uncomment to check if this script is being called

#=> backup to Dropbox
source ~/.export-machine; source ~/.export-Arch
bhr="$machLg/jo/bash_history_reversed"; [ -f $bhr ] || touch $bhr
bht="$HOME/Arch/bash_history_tmp.sh"
tac $bhr > $bht; cat ~/.bash_history >> $bht
tac $bht | awk '!a[$0]++' > $bhr  # reverse and remove older duplicate lines
rm $bht
# any bad lines would need to expunged from the default history and my reversed backup
#  s $culLA/ml-DOP3040D11S/jo/bash_history_reversed
#  s $culLA/ml-sbMb/jo/bash_history_reversed
cat $bhr | sort > "$machLg/jo/bash_history_sorted"

