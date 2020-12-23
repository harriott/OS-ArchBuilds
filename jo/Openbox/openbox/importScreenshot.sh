#!/bin/bash

# Take a time-stamped fullscreenshot using ImageMagick
# ----------------------------------------------------
# Called by  Openbox's  rc.xml  because:
# <command>importScreenshot</command>  doesn't find my Bash function
# and the following line doesn't get correctly parsed either.

import -window root "screenshot-$(date '+%j-%H%M%S').jpg"

# This file (or a localised copy of it) needs to be executable (eg 755) and not a symlink.
