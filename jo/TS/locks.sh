#!/bin/bash

# Joseph Harriott - Wed 07 Sep 2022

# tidy up  Thunderbird  lockfiles
# -------------------------------
# fcrontab:  @ 1 bash ~/Arch/Tlocks.sh
# pb ~/Arch/Elocks.sh  - see $bSc/4-whenWM/symlinks.sh

host=$(uname -n)
case $host in
# case $(uname -n) in
    AsusW202) Storage=/mnt/SDEP128G ;;
    i34G1TU02) Storage=/mnt/BX200 ;;
    sbMb) Storage=/mnt/SDU3D1TB ;;
esac
T91=$Storage/Dropbox/JH/T91-default-release

# remove this machine's lockfile if Thunderbird isn't running
llf=$T91/linuxlock  # lockfile created by  $ARCHBUILDS/jo/TS/ts.sh
    # rm $T91/linuxlock
if ! pgrep thunderbird; then [ $(cat $llf) = $host ] && rm $llf; fi

# remove linux Thunderbird's default lockfile
rm $T91/lock  # file $T91/lock
# - because its an uninformative hanging symlink
#   that sometimes triggers a Dropbox warning on Win10

