#!/bin/bash

# Joseph Harriott, Thu 10 Aug 2023

# $AjB/bash_history.sh  (see  $OSAB/nodes-set/jo-0.sh)

# robustly save my BASH history, for finding ancient commands
# fcrontab:  @ 10 bash ~/Arch/bash_history.sh

# DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -u critical "bash_history.sh $(date +%H%M)"  # uncomment to check if this script is being called

cat ~/.bash_history >> ~/Arch/bash_history-tmp
cat ~/Arch/bash_history-tmp | awk '!a[$0]++' | sort > ~/Arch/bash_history
rm ~/Arch/bash_history-tmp

