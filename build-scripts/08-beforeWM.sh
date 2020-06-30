#!/bin/bash
# vim: fdm=expr fdc=1 fdl=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> make AUR directory
mkdir ~/Arch/AUR

#=> grab default rsnapshot conf
# grab the default
cp /etc/rsnapshot.conf /bs/k6u-rsnapshot.conf

# #=> rsnapshot conf, for first run
# # my configuration
# mkdir /mnt/HD103SJ/rsnapshot
# sudo cp $MACHINE/etc/rsnapshot.conf /etc/rsnapshot.conf

# # check
# rsnapshot configtest
# # simulate first run
# rsnapshot -t hourly
# # now need to  sudo rsnapshot hourly  and monitor progress with  du -sh rsnapshot

