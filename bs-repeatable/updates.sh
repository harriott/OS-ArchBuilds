#!/bin/bash
# vim: fdl=1 sw=2:

# bash $OSAB/bs-repeatable/updates.sh

#=> 0 log directories
CAC="$culLAb/ml-$host/CAC"
pc="$culLAb/ml-$host/pm/cu"
pQ="$culLAb/ml-$host/pm/Q"

#=> 1 log directories 1 fallback
[ -d $CAC ] || CAC=~/CAC
[ -d $pc ] || pm=~/pm/cu
[ -d $pQ ] || pm=~/pm/Q

#=> 2 get into sudo
echo 'Get into sudo:'
sudo true

#=> 3 save update log
echo 'checkupdates'
checkupdates --nocolor > $pc/$(date '+%y%m%d-%H%M').log

#=> 4 now catch errors
set -e

#=> 5 updates
echo 'Do updates:'
sudo pacman -Syu
################################
## reboot if kernel updated ! ##
################################

#=> 6 pacnews
echo "${tpf5b}Checking for pacnews:${tpfn}"
sudo find /etc -type f -name "*pacnew"
read -p "${tpf5b}- were there?${tpfn}"

#=> 7 save CA-Certificates
crt=$CAC/ca-certificates-$(date '+%y%m%d-%H%M').crt
cp /etc/ssl/certs/ca-certificates.crt $crt
chmod 600 $crt

#=> 7 save full query
echo 'saving full package log'
pacman -Q > $pQ/$(date '+%y%m%d-%H%M').log

#=> 8 /var/cache/pacman/pkg
echo 'minimising /var/cache/pacman/pkg'
if [ $host = "AsusW202" ]; then
  yes | sudo pacman -Scc  # empty completely
else
  sudo paccache -qr  # reduce to last 3 versions
fi

#=> 9 AURs
echo 'checking AURs'
if ( pacman -Qs auracle > /dev/null 2>&1) ; then
  auracle sync
fi

