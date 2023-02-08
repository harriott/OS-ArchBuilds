#!/bin/bash

# Take a time-stamped fullscreenshot using ImageMagick
# ----------------------------------------------------

# chmod 755 $Openbox/openbox/rc/importScreenshot.sh
# symlinked in  $bSc/symlinks/jo-1-Openbox.sh

# Called by  $Openbox/openbox/rc.xml  because:
#  <command>importScreenshot</command>  doesn't find my Bash function
#  and the following line doesn't get correctly parsed either.

import -window root "screenshot-$(date '+%j-%H%M%S').jpg"

