#!/bin/bash

# fix CopyQ when clipboard tab is showing blanks
# ----------------------------------------------

# chmod 755 $Obc/rc/fixCopyQ.sh
# symlinked in  $OSAB/nodes-set/jo-1-Openbox.sh
# called by  $Obc/rc/rc.xml

pkill copyq; copyq &
sleep 1; copyq show

