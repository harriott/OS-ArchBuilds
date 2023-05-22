#!/bin/bash
# vim: fdl=1 sw=2:

# . symlinksRepair.sh
# for occasions when I've renamed directories, breaking symlinks

set -e

#=> 0 machine
# . AsusW202/export-machine
# . i34G1TU02/export-machine
# . sbMb/export-machine

#=> 1 functional console
# . Bash/export-storage
# . jo/Bash/export-jo
# . build-scripts/symlinks/jo-0.sh

#=> 2 window manager
. build-scripts/symlinks/jo-1-awesome.sh
# . build-scripts/symlinks/jo-1-Openbox.sh

#=> 3 when window manager up
. build-scripts/symlinks/jo-2-whenWM-1.sh

