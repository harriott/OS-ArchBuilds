#!/bin/bash

# Joseph Harriott - Wed 18 May 2022

# run Thunderbird safely from Profile shared on Dropbox
# -----------------------------------------------------

# (chmod 755 $ARCHBUILDS/jo/ts.sh)
# symlinked in my  $ARCHBUILDS/build-scripts/38-LibreOffice+Thunderbird.sh
#  cat /usr/local/bin/thunderbird_safely

# Tests:
#  bash $ARCHBUILDS/jo/TS/ts.sh
#  echo lockTest > $llf
#  touch $wlf

llf=$T91/linuxlock    # my creation  -  rm $llf
wlf=$T91/parent.lock  # auto-created by  Thunderbird  on  Win10  -  rm $wlf
# l 2>/dev/null $llf $wlf

if [ -s $llf ]; then
    lh=$(cat $llf)
    [ $lh = $host ] || ll=$lh
fi
[ -f "$wlf" ] && wl=Win10

l="$ll $wl"
if [ -z $l ]; then
    echo $host > $llf; thunderbird
else
    notify-send -i /usr/share/icons/hicolor/16x16/apps/thunderbird.png -u critical "? $l > Thunderbird > T91-default-release"
fi

