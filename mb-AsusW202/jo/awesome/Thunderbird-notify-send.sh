#!/bin/bash -eu

# Joseph Harriott - Thu 23 Jun 2022
# launch  Thunderbird  with a notification

# (chmod 755 $machBld/jo/awesome/Thunderbird-notify-send.sh)
# called by  $machBld/jo/awesome/rc.lua
# symlinked in my  $bSc/39-awesome.sh

notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png "Thunderbird on tab 3."
thunderbird_safely

