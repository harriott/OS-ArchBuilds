#!/bin/bash
# vim: se fdl=2:

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev  # quit on error, prints each statement here, including comments

if [ ! -f /etc/pacman.d/mirrorlist.pacnew ]; then echo "no mirrorlist.pacnew"; exit; fi

#=> 0 $ARCHBUILDS
# check  $ARCHBUILDS/Bash/export-storage  has leveraged  /ArchBuilds
echo "\$ARCHBUILDS is $ARCHBUILDS"
read -p "- looks good?"

#=> 1 mirrorlist
rm /etc/pacman.d/mirrorlist.pacnew
. $bs/anytime/as_root-reflector.sh

