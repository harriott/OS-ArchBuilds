#!/bin/bash
# vim: fdl=2:

# Joseph Harriott, lun 03 août 2026

# sudo bash $ABno/root/bash_history.sh ($OSAB/nodes-set/root-0.sh)

# save my root BASH history
# fcrontab:  @ 6 bash ~/bash_history.sh
# changes here are instantly effected

#=> backup root
rbh="/home/jo/Arch/root-bash_history" # further processed by  $AjB/bash_history.sh
cp /root/.bash_history $rbh; chown jo:jo $rbh

