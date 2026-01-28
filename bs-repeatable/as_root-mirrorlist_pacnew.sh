#!/bin/bash
# vim: se fdl=2 sw=2:

# sudo bash $OSAB/bs-repeatable/as_root-mirrorlist_pacnew.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -e  # quit on error

#=> 0 get $OSAB
. ~/.export-machine  # $machBld/export-machine
  Drpbx=$Storage/Dropbox
    DJH=$Drpbx/JH
      core=$DJH/core
        coreIT=$core/IT
          onGH=$coreIT/onGitHub
            OSAB=$onGH/OS-ArchBuilds

#=> 1 check $OSAB
# check  $OSAB/nodes-Bash/export-storage  has leveraged  /ArchBuilds
read -p "\$OSAB is $OSAB - looks good?"

#=> 2 verbose
set -v  # prints each statement here, including comments

#=> 3 mirrorlist
[ -f /etc/pacman.d/mirrorlist.pacnew ] && rm /etc/pacman.d/mirrorlist.pacnew
source $OSAB/bs-repeatable/as_root-reflector.sh

