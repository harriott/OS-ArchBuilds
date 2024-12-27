#!/bin/bash

# sudo bash $OSAB/bs-1-to_jo/6-as_root-rsnapshot_automated.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $OSAB
cd $(dirname "${BASH_SOURCE[0]}")
. ../mb-$(uname -n)/export-machine
. ../Bash/export-storage
read -p "\$OSAB is $OSAB - looks good?"

# #=> 1 rsnapshot systemd files
# cp $OSAB/etc/systemd/rsnapshot/hourly.timer /etc/systemd/system/rsnapshot-hourly.timer
# cp $OSAB/etc/systemd/rsnapshot/daily.timer /etc/systemd/system/rsnapshot-daily.timer
# cp $OSAB/etc/systemd/rsnapshot/weekly.timer /etc/systemd/system/rsnapshot-weekly.timer
# cp $OSAB/etc/systemd/rsnapshot/monthly.timer /etc/systemd/system/rsnapshot-monthly.timer
# cp $OSAB/etc/systemd/rsnapshot/ampersand.service /etc/systemd/system/rsnapshot@.service
# cp $OSAB/etc/systemd/rsnapshotMinute/test.timer /etc/systemd/system/rsnapshot-test.timer

# #=> 2 rsnapshot working 1 timers 0 enable
# systemctl enable --now rsnapshot-hourly.timer
# systemctl enable --now rsnapshot-daily.timer
# systemctl enable --now rsnapshot-weekly.timer
# systemctl enable --now rsnapshot-monthly.timer
# systemctl status rsnapshot-hourly.timer

#=> 2 rsnapshot working 1 timers 1 disable
systemctl disable --now rsnapshot-hourly.timer
systemctl disable --now rsnapshot-daily.timer
systemctl disable --now rsnapshot-weekly.timer
systemctl disable --now rsnapshot-monthly.timer

#=> 3 list all timers
systemctl list-timers --no-pager

