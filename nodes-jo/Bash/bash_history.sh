#!/bin/bash
# vim: fdl=1:

# Joseph Harriott, Thu 27 Nov 2025

# $AjB/bash_history.sh  symlinked in  $OSAB/nodes-set/jo-0-Bash-X.sh

# robustly save my BASH history, for finding ancient commands
# fcrontab:  @ 5 bash ~/Arch/bash_history.sh
# changes here are instantly effected

# DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -u critical "bash_history.sh $(date +%H%M)" # - uncomment to check if this script is being called

#=> alphabetical
cat ~/.bash_history >> ~/Arch/bash_history-tmp
cat ~/Arch/bash_history-tmp | awk '!a[$0]++' | sort > ~/Arch/bash_history-sorted
rm ~/Arch/bash_history-tmp

#=> backup to Dropbox
source ~/.export-machine
source ~/.export-storage
cp ~/.bash_history $machLg/jo/bash_history
#  $culLA/ml-DOP3040D11S/jo/bash_history
#  $culLA/ml-sbMb/jo/bash_history

