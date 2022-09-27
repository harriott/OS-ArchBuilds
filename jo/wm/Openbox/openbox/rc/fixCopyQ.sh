#!/bin/bash

# fix CopyQ when clipboard tab is showing blanks
# ----------------------------------------------

# chmod 755 $Openbox/openbox/rc/fixCopyQ.sh
# symlinked in  $bSc/symlinks/jo-1-Openbox.sh
# called by  $Openbox/openbox/rc.xml

pkill copyq; copyq &
sleep 1; copyq show

