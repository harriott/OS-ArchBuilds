#!/bin/bash

# Joseph Harriott - Wed 11 Jun 2025

# run Thunderbird safely from Profile shared on Dropbox
# -----------------------------------------------------

# managed in my  $OSAB/nodes-set/jo-2-whenWM-1.sh
#  to provide my command  thunderbird_safely
#   target for  Xfce > Application Shortcuts > Mail
#   used in  $Obc/schema.pl

# Tests:
#  touch "$thb/x's conflicted copy y"
#  bash $ABjo/wm/TS/thunderbird_safely.sh

if test $(find $thb -regex ".* conflicted copy .*\|.* (Copie en conflit de .*" | wc -c) -eq 0; then
    echo "$(date +%y%m%d-%H%M%S)  $host  \$thb" >> $cITCP/WAN/email-Thunderbird/activity
    # echo "thunderbirds are go" # for testing
    thunderbird
else
    notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png -u critical 'Dropbox conflicts in  $thb!'
fi

