#!/bin/bash
# vim: fdl=1:

#=> 0 rsnapshot systemd files
# rsnapshot timers - when rsnapshot conf
for systemdUnit in $ARCHBUILDS/etc/systemd/rsnapshot*; do
    cp $systemdUnit /etc/systemd/system/${systemdUnit##/*/}
    # echo "$systemdUnit /etc/systemd/system/${systemdUnit##/*/}"
done
# eg $ARCHBUILDS/etc/systemd/rsnapshot-hourly.timer

# #=> 1 rsnapshot timers 0 enable
# systemctl enable --now rsnapshot-hourly.timer
# systemctl enable --now rsnapshot-daily.timer
# systemctl enable --now rsnapshot-weekly.timer
# systemctl enable --now rsnapshot-monthly.timer
# systemctl status rsnapshot-hourly.timer

# #=> 1 rsnapshot timers 1 disable
# systemctl disable --now rsnapshot-hourly.timer
# systemctl disable --now rsnapshot-daily.timer
# systemctl disable --now rsnapshot-weekly.timer
# systemctl disable --now rsnapshot-monthly.timer

# #=> 2 rsyncSystemRestore
# cp $ARCHBUILDS/build-scripts/24-rsyncSystemRestore.sh $rsnapshot/rsyncSystemRestore.sh

