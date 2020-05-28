#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash build.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> make AUR directory
mkdir ~/Arch
mkdir ~/Arch/AUR

#=> rsnapshot conf, for first run
# grab the default
cp /etc/rsnapshot.conf $MACHINE/etc/k5c-rsnapshot.conf
cp /etc/rsnapshot.conf $MACHINE/etc/rsnapshot.conf

# my configuration
mkdir /mnt/HD103SJ/rsnapshot
sudo cp $MACHINE/etc/rsnapshot.conf /etc/rsnapshot.conf

# check
rsnapshot configtest
# simulate first run
rsnapshot -t hourly
# now need to  sudo rsnapshot hourly  and monitor progress with  du -sh rsnapshot

