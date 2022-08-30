#!/bin/bash -eu

# Joseph Harriott - Thu 12 May 2022
# launch  Firefox  with a notification

# (chmod 755 $machBld/jo/awesome/Firefox-notify-send.sh)
# called by  $machBld/jo/awesome/rc.lua
# symlinked in my  $bs/39-awesome.sh

notify-send -i /usr/share/icons/hicolor/16x16/apps/firefox.png "An instance of Firefox was launched."
firefox

