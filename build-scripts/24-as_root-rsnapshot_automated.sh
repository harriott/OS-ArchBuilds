#!/bin/bash
# vim: fdl=1:

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

echo "ARCHBUILDS=$ARCHBUILDS"

# # #=> 1 rsnapshot systemd files 0
# cp $ARCHBUILDS/etc/systemd/rsnapshot-hourly.timer /etc/systemd/system/rsnapshot-hourly.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot-daily.timer /etc/systemd/system/rsnapshot-daily.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot-weekly.timer /etc/systemd/system/rsnapshot-weekly.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot-monthly.timer /etc/systemd/system/rsnapshot-monthly.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot@.service /etc/systemd/system/rsnapshot@.service

#=> 1 rsnapshot systemd files 1 adjusted for laptop
cp $ARCHBUILDS/etc/systemd/rsnapshot-sync-hourly.timer /etc/systemd/system/rsnapshot-hourly.timer
cp $ARCHBUILDS/etc/systemd/rsnapshot-sync-hourly.service /etc/systemd/system/rsnapshot-hourly.service

#=> 2 rsnapshot timers 0 enable
systemctl enable --now rsnapshot-hourly.timer
systemctl enable --now rsnapshot-daily.timer
systemctl enable --now rsnapshot-weekly.timer
systemctl enable --now rsnapshot-monthly.timer
systemctl status rsnapshot-hourly.timer

# #=> 2 rsnapshot timers 1 disable
# systemctl disable --now rsnapshot-hourly.timer
# systemctl disable --now rsnapshot-daily.timer
# systemctl disable --now rsnapshot-weekly.timer
# systemctl disable --now rsnapshot-monthly.timer

