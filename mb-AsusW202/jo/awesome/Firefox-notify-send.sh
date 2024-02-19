#!/bin/bash -eu

# Joseph Harriott - Mon 22 Jan 2024
# launch  Firefox  with a notification

# (chmod 755 $machBld/jo/awesome/Firefox-notify-send.sh)
# called by  $machBld/jo/awesome/rc.lua
# symlinked in my  $OSAB/bs-symlinks/jo-1-awesome.sh

notify-send -i /usr/share/icons/hicolor/16x16/apps/firefox.png "An instance of Firefox is launched on tag 2."
firefox

