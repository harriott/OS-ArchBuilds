#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=~/ArchBuilds
    MACHINE=$ARCHBUILDS/sbMb

# #=> make AUR directory
# mkdir -p ~/Arch/AUR

# #=> grab default rsnapshot conf
# cp /etc/rsnapshot.conf /mm/k86-rsnapshot.conf

# #=> rsnapshot conf, for first run
# my configuration
# mkdir /mnt/WD30EZRZ/rsnapshot
# sudo cp $MACHINE/etc/rsnapshot.conf /etc/rsnapshot.conf

#=> test rsnapshot conf
# needed folders
mkdir /mnt/SD480GSSDPlus/Dropbox
mkdir /mnt/9QF57J6Q/Share

# check
rsnapshot configtest

# test
rsnapshot -t hourly

# now can  sudo rsnapshot hourly  and monitor progress with  du -sh rsnapshot

