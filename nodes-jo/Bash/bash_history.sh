#!/bin/bash
# vim: fdl=3:

# Joseph Harriott, Wed 20 May 2026

# $AjB/bash_history.sh ($OSAB/nodes-set/jo-0-Bash-X.sh)

# robustly save my BASH history, for finding ancient commands
# fcrontab:  @ 5 bash ~/Arch/bash_history.sh
# changes here are instantly effected

# DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -u critical "bash_history.sh $(date +%H%M)" # - uncomment to check if this script is being called

#=> backup to Dropbox
source ~/.start; source ~/.export-Arch

#==> users
# any bad lines would need to expunged from the default history and my reversed backup

#===> jo
bhr="$machLg/jo/bash_history_reversed"; [ -f $bhr ] || touch $bhr
bht="$HOME/Arch/bash_history_tmp.sh"
tac $bhr > $bht; cat ~/.bash_history >> $bht
tac $bht | awk '!a[$0]++' > $bhr  # reverse and remove older duplicate lines
rm $bht
#  s $culLA/ml-DOP3040D11S/jo/bash_history_reversed
#  s $culLA/ml-sbMb/jo/bash_history_reversed
cat $bhr | sort > "$machLg/jo/bash_history_sorted"

#===> root
rbhr="$machLg/root/bash_history_reversed"; [ -f $rbhr ] || touch $rbhr
rbht="$HOME/Arch/root_bash_history_tmp.sh"
tac $rbhr > $rbht; cat ~/Arch/root-bash_history >> $rbht
tac $rbht | awk '!a[$0]++' > $rbhr  # reverse and remove older duplicate lines
rm $rbht
#  s $culLA/ml-DOP3040D11S/root/bash_history_reversed
#  s $culLA/ml-sbMb/root/bash_history_reversed
cat $rbhr | sort > "$machLg/root/root_bash_history_sorted"

