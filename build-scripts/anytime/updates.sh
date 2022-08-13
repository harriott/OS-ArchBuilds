#!/bin/bash
# vim: fdl=1 sw=2:

#=> 0 save update log
echo 'checkupdates'
checkupdates > $ulL/Arch/$host/pacman/checkupdates-$(date '+%y%m%d-%H%M').log

#=> 1 updates
echo 'Do updates:'
sudo pacman -Syu
################################
## reboot if kernel updated ! ##
################################

#=> 5 pacnews
echo 'Checking for pacnews:'
sudo find /etc -type f -name "*pacnew"
read -p "- were there?"

#=> 5 save full query
echo 'saving full package log'
pacman -Q > $ulL/Arch/$host/pacman/pacman-Q-$(date '+%y%m%d-%H%M').log

#=> 7 /var/cache/pacman/pkg
echo 'minimising /var/cache/pacman/pkg'
if [ $host = "LIP120s81A4" ]; then
  yes | sudo pacman -Scc  # empty completely
else
  sudo paccache -qr  # reduce to last 3 versions
fi

#=> 8 AURs
echo 'checking AURs'
if ( pacman -Qs auracle > /dev/null 2>&1) ; then
  auracle sync
fi

