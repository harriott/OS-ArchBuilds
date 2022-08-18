#!/bin/bash
# vim: fdl=1 sw=2:

set -e

#=> 0 pacman directory
pm=$ulL/Arch/$host/pacman
[ -d $pm ] || pm=~/pacman

#=> 1 save update log
echo 'checkupdates'
checkupdates > $pm/checkupdates-$(date '+%y%m%d-%H%M').log

#=> 2 updates
echo 'Do updates:'
sudo pacman -Syu
################################
## reboot if kernel updated ! ##
################################

#=> 3 pacnews
echo 'Checking for pacnews:'
sudo find /etc -type f -name "*pacnew"
read -p "- were there?"

#=> 7 save full query
echo 'saving full package log'
pacman -Q > $pm/pacman-Q-$(date '+%y%m%d-%H%M').log

#=> 5 /var/cache/pacman/pkg
echo 'minimising /var/cache/pacman/pkg'
if [ $host = "AsusW202" ]; then
  yes | sudo pacman -Scc  # empty completely
else
  sudo paccache -qr  # reduce to last 3 versions
fi

#=> 6 AURs
echo 'checking AURs'
if ( pacman -Qs auracle > /dev/null 2>&1) ; then
  auracle sync
fi

