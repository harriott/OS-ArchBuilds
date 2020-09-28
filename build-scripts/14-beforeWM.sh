#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold sw=2:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 $MACHINE
ARCHBUILDS=~/ArchBuilds
    MACHINE=$ARCHBUILDS/sbMb

# #=> 0 grab default rsnapshot conf
# cp /etc/rsnapshot.conf /mm/k86-rsnapshot.conf

# #=> 0 make AUR directory
# mkdir -p ~/Arch/AUR

# #=> 1 rsnapshot conf, for first run
# my configuration
# mkdir /mnt/WD30EZRZ/rsnapshot
# sudo cp $MACHINE/etc/rsnapshot.conf /etc/rsnapshot.conf

#=> 2 test rsnapshot conf
# needed folders
mkdir /mnt/SD480GSSDPlus/Dropbox
mkdir /mnt/9QF57J6Q/Share

# check
rsnapshot configtest

# test
rsnapshot -t hourly

# now can  sudo rsnapshot hourly  and monitor progress with  du -sh rsnapshot

