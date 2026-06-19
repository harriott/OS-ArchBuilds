#!/bin/bash
# vim: fdl=1 sw=2:

# sudo bash $OSAB/bs-1-into_jo/7-rsnapshot.sh

set -ev  # quits on error, prints each statement here, including comments

#=> 0 inotify-tools
# supplies  inotifywait, for monitoring file changes
pacman -S inotify-tools

#=> 1 set my rsnapshot conf 1 working
if   [[ $host =~ HPEB840G37 ]]; then
  sudo cp $OSAB/mb-HPEB840G3x/7/etc/rsnapshot.conf /etc/rsnapshot.conf
elif [[ $host =~ HPEB840G38 ]]; then
  sudo cp $OSAB/mb-HPEB840G3x/8/etc/rsnapshot.conf /etc/rsnapshot.conf
else
  sudo cp $machBld/etc/rsnapshot.conf /etc/rsnapshot.conf
fi

#=> 2 rsnapshot needed locations
mkdir $rsnapshot  # /rsnapshot=
sudo touch /var/log/rsnapshot

#=> 3 test rsnapshot conf
rsnapshot configtest

#=> 4 prepare restore script
cp $OSAB/bs-repeatable/from_rescue_boot-rsnapshot_restore.sh $rsnapshot/restore.sh

