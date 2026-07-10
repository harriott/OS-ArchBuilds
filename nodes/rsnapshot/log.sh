#!/bin/bash

# Joseph Harriott - Tue 07 Jul 2026

# $ABno/rsnapshot/log.sh
#  sourced by
#   $ABno/rsnapshot/rotate.sh
#   $ABno/rsnapshot/sync.sh

# backup  /var/log/rsnapshot
#  because on  DOP3040D11S  it gets refreshed sometimes, losing old records

d=$(date +%Y%m%d)
l="$HOME/Arch/root/log_rsnapshot-$d" # r ~/Arch/root
echo 'vim: ft=rsnapshotlog:' > $l
echo '' >> $l
cat /var/log/rsnapshot >> $l

