#!/bin/bash
# vim: sw=2:

# toggle symlinks to joy music in  ~/music
# ----------------------------------------

# chmod 755 $Openbox/toggleMusicJoy.sh
# symlinked in  $OSAB/nodes-set/jo-2-whenWM-0.sh  to  ~/.config/openbox/toggleMusicJoy.sh
# called by  $Obc/rc/rc.xml

[[ -f ~/music/good ]] && bash $machBld/jo/toggleMusicGood1.sh
source $Openbox/toggleMusicJoy.sh

