#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# sudo bash -E <this_script>

# #=> when rsnapshot conf
# # rsnapshot 2 timers
for systemdUnit in $ARCHBUILDS/etc/systemd/rsnapshot*; do
    cp $systemdUnit /etc/systemd/system/${systemdUnit##/*/}
done
systemctl enable --now rsnapshot-hourly.timer
systemctl enable --now rsnapshot-daily.timer
systemctl enable --now rsnapshot-weekly.timer
systemctl enable --now rsnapshot-monthly.timer
systemctl status rsnapshot-hourly.timer

