#!/bin/bash

# Joseph Harriott - Thu 18 Jul 2024

# run Thunderbird safely from Profile shared on Dropbox
# -----------------------------------------------------

# (chmod 755 $OSAB/jo/wm/TS/thunderbird_safely.sh)
# symlinked in my  $OSAB/nodes-set/jo-2-whenWM-1.sh
#  to provide my command  thunderbird_safely
#   used in  $Obc/schema.pl

# Tests:
#  bash $OSAB/jo/wm/TS/thunderbird_safely.sh
#  echo lockTest > $llf
#  touch $wlf

llf="$Thb/linuxlock"  # my creation
#  echo $host > $Thb/linuxlock
#  pb $Thb/linuxlock
wlf="$Thb/Win10ProLock"  # $MSWin10\Thb\runSafely.ps1
# l 2>/dev/null $llf $wlf

if [ -s $llf ]; then
    lh=$(cat $llf)
    [ $lh = $host ] || ll=$lh
fi
[ -f "$wlf" ] && wl=$(cat $wlf)
alf="$ll $wl"
if [ -z $alf ]; then
    echo $host > $llf
    if test $(find $Thb -regex ".* conflicted copy .*\|.* (Copie en conflit de .*" | wc -c) -eq 0; then
        thunderbird
    else
        notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png -u critical 'Dropbox conflicts in $Thb.'
    fi
else
    notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png -u critical "Thunderbird locked to $alf"
fi

