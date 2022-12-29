#!/bin/bash
# vim: fdl=1 sw=2:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 inotify-tools
# # supplies  inotifywait, for monitoring file changes
# pacman -S inotify-tools

# #=> 0 grab default rsnapshot conf
# cp /etc/rsnapshot.conf ~/la5-rsnapshot.conf

#=> 1 set my rsnapshot conf 1 working
sudo cp $machBld/etc/rsnapshot.conf /etc/rsnapshot.conf

#=> 1 sync my rsnapshot configurations
A=$OSAB; erc=etc/rsnapshot.conf; nvim -O $A/i34G1TU02/$erc $A/LIP120s81A4/$erc $A/sbMb/$erc -c 'windo difft'

#=> 2 rsnapshot needed locations
mkdir $rsnapshot  # see $machBld/export-machine
sudo touch /var/log/rsnapshot

#=> 3 test rsnapshot conf
rsnapshot configtest

# #=> 4 test hourly
# rsnapshot -t hourly
# # could  sudo rsnapshot hourly  and monitor progress with  du -sh rsnapshot

# #=> 4 rsyncSystemRestore
# cp $bSc/24-rsyncSystemRestore.sh $rsnapshot/rsyncSystemRestore.sh

#=> 5 backup  /var/log/rsnapshot
ln -sf $ABjo/log_rsnapshot.sh ~/Arch/log_rsnapshot.sh

