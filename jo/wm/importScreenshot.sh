#!/bin/bash

# Take a time-stamped fullscreenshot using ImageMagick
# ----------------------------------------------------

# chmod 755 $ABjo/wm/importScreenshot.sh
# symlinked in
#   $OSAB/nodes-set/jo-1-awesome.sh
#   $OSAB/nodes-set/jo-1-Openbox.sh
# to  ~/.config/openbox/importScreenshot.sh

# Called by  $Obc/rc.xml  because:
#  <command>importScreenshot</command>  doesn't find my Bash function
#  and the following line doesn't get correctly parsed either.

import -window root "screenshot-$(date '+%j-%H%M%S').jpg"

