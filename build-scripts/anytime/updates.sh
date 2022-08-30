#!/bin/bash
# vim: fdl=1 sw=2:

# bash $bs/anytime/updates.sh
# r $machLg/pacman

#=> 0 pacman directory
pm=$machLg/pacman
[ -d $pm ] || pm=~/pacman

#=> 1 get into sudo
echo 'Get into sudo:'
sudo true

#=> 2 save update log
echo 'checkupdates'
checkupdates > $pm/checkupdates-$(date '+%y%m%d-%H%M').log

#=> 3 now catch errors
set -e

#=> 4 updates
echo 'Do updates:'
sudo pacman -Syu
################################
## reboot if kernel updated ! ##
################################

#=> 5 pacnews
echo "${tpf5b}Checking for pacnews:${tpfn}"
sudo find /etc -type f -name "*pacnew"
read -p "${tpf5b}- were there?${tpfn}"

#=> 6 save full query
echo 'saving full package log'
pacman -Q > $pm/pacman-Q-$(date '+%y%m%d-%H%M').log

#=> 7 /var/cache/pacman/pkg
echo 'minimising /var/cache/pacman/pkg'
if [ $host = "AsusW202" ]; then
  yes | sudo pacman -Scc  # empty completely
else
  sudo paccache -qr  # reduce to last 3 versions
fi

#=> 8 AURs
echo 'checking AURs'
if ( pacman -Qs auracle > /dev/null 2>&1) ; then
  auracle sync
fi

