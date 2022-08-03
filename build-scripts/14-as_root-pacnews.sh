#!/bin/bash

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev  # quit on error, prints each statement here, including comments

#=> 0 $ARCHBUILDS
# check  $ARCHBUILDS/Bash/export-storage  has leveraged  /ArchBuilds
echo "\$ARCHBUILDS is $ARCHBUILDS"
read -p "- looks good?"

# #=> 1 clamd.conf
# nvim -o /etc/clamav/clamd.conf /etc/clamav/clamd.conf.pacnew -c 'windo difft'
# rm /etc/clamav/clamd.conf.pacnew

#=> 1 mirrorlist
rm /etc/pacman.d/mirrorlist.pacnew
. $bs/02-as_root-reflector.sh

# #=> 1 sshd_config
# nvim -O /etc/ssh/sshd_config /etc/ssh/sshd_config.pacnew -c 'windo difft'
# rm /etc/ssh/sshd_config.pacnew

