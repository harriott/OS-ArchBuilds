#!/bin/bash

# Joseph Harriott - Wed 18 May 2022

# tidy up  Thunderbird  lockfiles
# -------------------------------
# fcrontab:  @ 1 bash ~/Arch/locks.sh
# symlinked in my  $ARCHBUILDS/build-scripts/toReview/38-LibreOffice+Thunderbird.sh

host=$(uname -n)
case $host in
# case $(uname -n) in
    i34G1TU02) Storage=/mnt/BX200 ;;
    LIP120s81A4) Storage=/mnt/SDEP128G ;;
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

