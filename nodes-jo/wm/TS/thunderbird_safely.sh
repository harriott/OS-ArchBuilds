#!/bin/bash

# Joseph Harriott - Wed 11 Jun 2025

# run Thunderbird safely from Profile shared on Dropbox
# -----------------------------------------------------

# managed in my  $OSAB/nodes-set/jo-2-whenWM-1.sh
#  to provide my command  thunderbird_safely
#   target for  Xfce > Application Shortcuts > Mail
#   used in  $Obc/schema.pl

# Tests:
#  bash $ABjo/wm/TS/thunderbird_safely.sh
#  echo lockTest > $llf
#  touch $wlf

llf="$JHThb/linuxlock"  # my creation
#  echo $host > $JHThb/linuxlock
#  pb $JHThb/linuxlock
wlf="$JHThb/Win10ProLock"  # $MSWin10\Thb\runSafely.ps1
# l 2>/dev/null $llf $wlf

if [ -s $llf ]; then
    lh=$(cat $llf)
    [ $lh = $host ] || ll=$lh
fi
[ -f "$wlf" ] && wl=$(cat $wlf)
alf="$ll $wl"
if [ -z $alf ]; then
    # echo $host > $llf  # deprecated
    if test $(find $JHThb -regex ".* conflicted copy .*\|.* (Copie en conflit de .*" | wc -c) -eq 0; then
        echo "$(date +%y%m%d-%H%M%S)  $host  \$thb" >> $cITCP/WAN/email-Thunderbird/activity
        thunderbird
    else
        notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png -u critical 'Dropbox conflicts in $JHThb.'
    fi
else
    notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png -u critical "Thunderbird locked to $alf"
fi

