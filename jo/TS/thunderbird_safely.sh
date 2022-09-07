#!/bin/bash

# Joseph Harriott - Sun 04 Sep 2022

# run Thunderbird safely from Profile shared on Dropbox
# -----------------------------------------------------

# (chmod 755 $ARCHBUILDS/jo/TS/thunderbird_safely.sh)
# symlinked in my  $bSc/4-whenWM/symlinks.sh
#  to provide my command  thunderbird_safely
#   used in  $Openbox/openbox/schema.pl

# Tests:
#  bash $ARCHBUILDS/jo/TS/thunderbird_safely.sh
#  echo lockTest > $llf
#  touch $wlf

llf=$T91/linuxlock    # my creation
wlf=$T91/parent.lock  # auto-created by  Thunderbird  on  Win10
# l 2>/dev/null $llf $wlf

if [ -s $llf ]; then
    lh=$(cat $llf)
    [ $lh = $host ] || ll=$lh
fi
[ -f "$wlf" ] && wl=Win10

l="$ll $wl"
if [ -z $l ]; then
    echo $host > $llf
    if test $(find $T91 -name "* conflicted copy*" | wc -c) -eq 0; then
        thunderbird
    else
        notify-send -i /usr/share/icons/hicolor/16x16/apps/thunderbird.png -u critical 'Dropbox conflicts in $T91.'
    fi
else
    notify-send -i /usr/share/icons/hicolor/16x16/apps/thunderbird.png -u critical "? $l > Thunderbird > T91-default-release"
fi

