#!/bin/bash
# vim: se fdl=2:

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -e  # quit on error

if [ ! -f /etc/pacman.d/mirrorlist.pacnew ]; then echo "no mirrorlist.pacnew"; exit; fi

#=> 0 get $ARCHBUILDS
. /home/jo/.export-machine  # if you've got Dropbox
. /home/jo/.export-storage

#=> 1 check $ARCHBUILDS
set -v  # prints each statement here, including comments
# check  $ARCHBUILDS/Bash/export-storage  has leveraged  /ArchBuilds
echo "\$ARCHBUILDS is $ARCHBUILDS"
read -p "- looks good?"

#=> 2 mirrorlist
rm /etc/pacman.d/mirrorlist.pacnew
. $bs/anytime/as_root-reflector.sh

