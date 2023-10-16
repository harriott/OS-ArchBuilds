#!/bin/bash

# Joseph Harriott - Sun 23 Jul 2023

# run Thunderbird safely from Profile shared on Dropbox
# -----------------------------------------------------

# (chmod 755 $OSAB/jo/wm/TS/thunderbird_safely.sh)
# symlinked in my  $OSAB/bs-symlinks/jo-2-whenWM-1.sh
#  to provide my command  thunderbird_safely
#   used in  $Obc/schema.pl

# Tests:
#  bash $OSAB/jo/wm/TS/thunderbird_safely.sh
#  echo lockTest > $llf
#  touch $wlf

llf=$Thb/linuxlock     # pb $Thb/linuxlock - my creation
wlf=$Thb/Win10ProLock  # auto-created by  Thunderbird  on  Win10Pro
# l 2>/dev/null $llf $wlf

if [ -s $llf ]; then
    lh=$(cat $llf)
    [ $lh = $host ] || ll=$lh
fi
[ -f "$wlf" ] && wl=Win10

l="$ll $wl"
echo $l
if [ -z $l ]; then
    echo $host > $llf
    if test $(find $Thb -name "* conflicted copy*" | wc -c) -eq 0; then
        thunderbird
    else
        notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png -u critical 'Dropbox conflicts in $Thb.'
    fi
else
    notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png -u critical "? $l > Thunderbird > Thb"
fi

