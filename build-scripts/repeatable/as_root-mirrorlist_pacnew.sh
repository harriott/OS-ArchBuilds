#!/bin/bash
# vim: se fdl=2:

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -e  # quit on error

#=> 0 get $ARCHBUILDS
. /home/jo/.export-machine  # if you've got Dropbox
. /home/jo/.export-storage

#=> 1 check $ARCHBUILDS
# check  $ARCHBUILDS/Bash/export-storage  has leveraged  /ArchBuilds
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 2 verbose
set -v  # prints each statement here, including comments

#=> 3 mirrorlist
[ -f /etc/pacman.d/mirrorlist.pacnew ] && rm /etc/pacman.d/mirrorlist.pacnew
. $bSc/repeatable/as_root-reflector.sh

