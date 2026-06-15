#!/bin/bash
# vim: fdl=2:

# Joseph Harriott, Sun 14 Jun 2026

# sudo bash $OSAB/nodes-root/bash_history.sh ($OSAB/nodes-set/root.sh)

# save my root BASH history
# fcrontab:  @ 6 bash ~/bash_history.sh
# changes here are instantly effected

#=> backup root
rbh="/home/jo/Arch/root-bash_history"; cp /root/.bash_history $rbh; chown jo:jo $rbh

