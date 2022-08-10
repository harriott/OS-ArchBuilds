#!/bin/bash
# vim: fdl=1 sw=2:

#=> 0 go slow
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 1 updates
sudo pacman -Syu
# reboot if kernel updated !
sudo find /etc -type f -name "*pacnew"
true
# "^ ^ ^ ^ ^ ^ - pacnews ?"
true

#=> 2 go fast
trap - debug  # turn off debug
set +v

#=> 3 save full query
# pacman -Q > $MACHINE/pacman-Q/$(date '+%Y%m%d%H%M').txt
# also  checkupdates

#=> 4 /var/cache/pacman/pkg
if [ $host = "LIP120s81A4" ]; then
  yes | sudo pacman -Scc  # empty completely
else
  sudo paccache -qr  # reduce to last 3 versions
fi

#=> 5 AURs
if ( pacman -Qs auracle > /dev/null 2>&1) ; then
  auracle sync
fi

