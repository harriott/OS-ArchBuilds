#!/bin/bash
# vim: fdl=1 sw=2:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 before Dropbox
ARCHBUILDS=$HOME/ArchBuilds
  MACHINE=$ARCHBUILDS/$(uname -n)

#=> 0 grab default rsnapshot conf
cp /etc/rsnapshot.conf ~/la5-rsnapshot.conf

#=> 1 set my rsnapshot conf
sudo cp $MACHINE/etc/rsnapshot.conf /etc/rsnapshot.conf

#=> 1 target directory
mkdir $rsnapshot

#=> 2 test rsnapshot conf

# 0 (empty) Dropbox folder
mkdir $Storage/Dropbox

# 1 check
rsnapshot configtest

# 2 test
rsnapshot -t hourly

# 3 now can  sudo rsnapshot hourly  and monitor progress with  du -sh rsnapshot

