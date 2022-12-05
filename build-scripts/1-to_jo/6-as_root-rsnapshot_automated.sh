#!/bin/bash
# vim: fdl=1:

# sudo bash $bSc/1-to_jo/6-as_root-rsnapshot_automated.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $ARCHBUILDS
cd $(dirname "${BASH_SOURCE[0]}")
. ../../$(uname -n)/export-machine
. ../../Bash/export-storage
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

# #=> 0 rsnapshot two-minute-test 0
# read -p "Have you switched to  rsnapshot-minuteTest.conf?"

# #=> 0 rsnapshot two-minute-test 1 systemd files
# cp $ARCHBUILDS/etc/systemd/rsnapshot/minuteTest.timer /etc/systemd/system/rsnapshot-minuteTest.timer

# #=> 0 rsnapshot two-minute-test 3 make target folder
# mkdir ~/rsnapshot-minuteTest/

# #=> 0 rsnapshot two-minute-test 3 timer 0 enable
# systemctl enable --now rsnapshot-minuteTest.timer

# #=> 0 rsnapshot two-minute-test 4 timer 1 disable
# systemctl disable --now rsnapshot-minuteTest.timer

# #=> 0 rsnapshot two-minute-test 5 remove target folder
# sudo rm -r ~/rsnapshot-minuteTest/

# #=> 1 rsnapshot working 0 systemd files 0
# cp $ARCHBUILDS/etc/systemd/rsnapshot/hourly.timer /etc/systemd/system/rsnapshot-hourly.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot/daily.timer /etc/systemd/system/rsnapshot-daily.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot/weekly.timer /etc/systemd/system/rsnapshot-weekly.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot/monthly.timer /etc/systemd/system/rsnapshot-monthly.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot/ampersand.service /etc/systemd/system/rsnapshot@.service

# #=> 1 rsnapshot working 0 systemd files 1 adjusted for external target
# cp $ARCHBUILDS/etc/systemd/rsnapshot/hourlySF.timer /etc/systemd/system/rsnapshot-hourly.timer
# cp $ARCHBUILDS/etc/systemd/rsnapshot/hourlySF.service /etc/systemd/system/rsnapshot-hourly.service

# #=> 1 rsnapshot working 1 timers 0 enable
# systemctl enable --now rsnapshot-hourly.timer
# systemctl enable --now rsnapshot-daily.timer
# systemctl enable --now rsnapshot-weekly.timer
# systemctl enable --now rsnapshot-monthly.timer
# systemctl status rsnapshot-hourly.timer

#=> 1 rsnapshot working 1 timers 1 disable
systemctl disable --now rsnapshot-hourly.timer
systemctl disable --now rsnapshot-daily.timer
systemctl disable --now rsnapshot-weekly.timer
systemctl disable --now rsnapshot-monthly.timer

#=> 2 list all timers
systemctl list-timers --no-pager

