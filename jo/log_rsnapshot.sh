#!/bin/bash

# Joseph Harriott - Sat 09 Jul 2022

# backup  /var/log/rsnapshot
# --------------------------
# because on  i34G1TU02  it gets refreshed sometimes, losing old records

# fcrontab:  @ 1 d bash ~/Arch/log_rsnapshot.sh
# symlinked in my  $bSc/23-rsnapshot.sh

d=$(date +%Y%m%d)
l=~/Arch/log_rsnapshot-$d
echo 'vim: ft=rsnapshotlog:' > $l
echo '' >> $l
cat /var/log/rsnapshot >> $l

