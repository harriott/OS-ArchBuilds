#!/bin/bash -eu

# Joseph Harriott - Mon 16 Oct 2023
# launch  Thunderbird  with a notification

# (chmod 755 $machBld/jo/awesome/Thunderbird-notify-send.sh)
# called by  $machBld/jo/awesome/rc.lua
# symlinked in my  $OSAB/bs-39-awesome.sh

notify-send -i /usr/share/icons/hicolor/16x16/apps/org.mozilla.Thunderbird.png "Thunderbird on tab 3."
thunderbird_safely

