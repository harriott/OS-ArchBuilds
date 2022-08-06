#!/bin/bash -eu

# Joseph Harriott - Thu 23 Jun 2022
# launch  Thunderbird  with a notification

# (chmod 755 $MACHINE/jo/awesome/Thunderbird-notify-send.sh)
# called by  $MACHINE/jo/awesome/rc.lua
# symlinked in my  $bs/39-awesome.sh

notify-send -i /usr/share/icons/hicolor/16x16/apps/thunderbird.png "Thunderbird on tab 3."
thunderbird_safely

