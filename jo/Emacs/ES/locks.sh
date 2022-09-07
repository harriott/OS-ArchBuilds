#!/bin/bash

# Joseph Harriott - Sun 04 Sep 2022

# tidy up my  Emacs  lockfiles
# ----------------------------
# fcrontab:  @ 1 bash ~/Arch/Elocks.sh
# pb ~/Arch/Elocks.sh  - see  $bSc/symlinks/jo-2-whenDropbox.sh

host=$(uname -n)
case $host in
# case $(uname -n) in
    AsusW202) Storage=/mnt/SDEP128G ;;
    i34G1TU02) Storage=/mnt/BX200 ;;
    sbMb) Storage=/mnt/SDU3D1TB ;;
esac
emacs=$Storage/Dropbox/JH/core/IT_stack/unix_like-linux/Arch/emacs

# remove this machine's lockfile if  Emacs  isn't running
llf=$emacs/lock  # lockfile created by  $ARCHBUILDS/jo/ES/emacs_safely.sh
    # rm $emacs/lock
if ! pgrep emacs; then [ $(cat $llf) = $host ] && rm $llf; fi

