#!/bin/bash

# Joseph Harriott - Thu 07 Mar 2024

# tidy up  Thunderbird  lockfiles
# -------------------------------
# $ABjo/wm/TS/locks.sh  symlinked in  $OSAB/bs-symlinks/jo-2-whenWM-1.sh
# fcrontab:  @ 1 bash ~/Arch/locks.sh

# notify-send -u critical 'test of $ABjo/wm/TS/locks.sh'

host=$(uname -n)
case $host in
# case $(uname -n) in
    i34G1TU02) Storage=/mnt/BX200 ;;
    sbMb) Storage=/mnt/SDU3D1TB ;;
esac
Thb=$Storage/Dropbox/JH/Thb-dr

# remove this machine's lockfile if Thunderbird isn't running
llf="$Thb/linuxlock"  # lockfile created by  $ABjo/wm/TS/thunderbird_safely.sh
    # pb $Thb/linuxlock
    # rm $Thb/linuxlock
# if ! pgrep thunderbird; then [ $(cat $llf) = $host ] && rm $llf; fi
# pgrep thunderbird || [ $(cat $llf) = $host ] && rm $llf; fi
if ! pgrep thunderbird; then
    if [ -f "$llf" ]; then
        if [ $(cat $llf) = $host ]; then
            if (rm $llf); then
                XDG_RUNTIME_DIR=/run/user/$(id -u) notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png 'removed $Thb/linuxlock'
            fi
        fi
    fi
fi

# remove linux Thunderbird's default lockfile
[ -f "$Thb/lock" ] && rm $Thb/lock  # file $Thb/lock
# - because its an uninformative hanging symlink
#   that sometimes triggers a Dropbox warning on Win10

