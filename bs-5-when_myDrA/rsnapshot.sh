#!/bin/bash
# vim: fdl=1 sw=2:

# bash $OSAB/bs-5-when_myDrA/rsnapshot.sh

set -ev  # quits on error, prints each statement here, including comments

#=> 0 inotify-tools
pikn inotify-tools  # supplies  inotifywait, for monitoring file changes

#=> 1 set my rsnapshot conf 1 working
sudo cp $ABnm/etc/rsnapshot.conf /etc/rsnapshot.conf

#=> 2 rsnapshot needed locations
read -p "going to  mdir $rsnapshot"; mkdir $rsnapshot  # /rsnapshot=
sudo touch /var/log/rsnapshot

#=> 3 test rsnapshot conf
rsnapshot configtest

#=> 4 prepare restore script
cp $OSAB/bs-repeatable/from_rescue_boot-rsnapshot_restore.sh $rsnapshot/restore.sh

