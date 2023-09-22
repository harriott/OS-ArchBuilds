#!/bin/bash

# Joseph Harriott - Wed 16 Aug 2023

# tidy up  Thunderbird  lockfiles
# -------------------------------
# fcrontab:  @ 1 bash ~/Arch/locks.sh
# $ABjo/wm/TS/locks.sh
#  symlinked in  $OSAB/bs-symlinks/jo-2-whenWM-1.sh
#   e -la ~/Arch/locks.sh
#   pb ~/Arch/locks.sh

host=$(uname -n)
case $host in
# case $(uname -n) in
    AsusW202) Storage=/mnt/SDEP128G ;;
    i34G1TU02) Storage=/mnt/BX200 ;;
    sbMb) Storage=/mnt/SDU3D1TB ;;
esac
Thb=$Storage/Dropbox/JH/Thb-dr

# remove this machine's lockfile if Thunderbird isn't running
llf=$Thb/linuxlock  # lockfile created by  $ABjo/TS/thunderbird_safely.sh
    # pb $Thb/linuxlock
    # rm $Thb/linuxlock
if ! pgrep thunderbird; then [ $(cat $llf) = $host ] && rm $llf; fi

# remove linux Thunderbird's default lockfile
rm $Thb/lock  # file $Thb/lock
# - because its an uninformative hanging symlink
#   that sometimes triggers a Dropbox warning on Win10

