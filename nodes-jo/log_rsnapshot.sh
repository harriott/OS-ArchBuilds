#!/bin/bash

# Joseph Harriott - Wed 18 Oct 2023

# backup  /var/log/rsnapshot
# --------------------------
# because on  DOP3040D11S  it gets refreshed sometimes, losing old records

# fcrontab:  @ 1 d bash ~/Arch/log_rsnapshot.sh
# symlinked in my  $OSAB/bs-1-to_jo/5-rsnapshot.sh

d=$(date +%Y%m%d)
l="~/Arch/root/log_rsnapshot-$d"
echo 'vim: ft=rsnapshotlog:' > $l
echo '' >> $l
cat /var/log/rsnapshot >> $l

