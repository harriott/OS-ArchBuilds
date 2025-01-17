#!/bin/bash
# vim: sw=2:

# toggle symlinks to good music in  ~/music
# -----------------------------------------

# chmod 755 $Openbox/toggleMusicGood.sh
# symlinked in  $OSAB/nodes-set/jo-2-whenWM-0.sh  to  ~/.config/openbox/toggleMusicGood0.sh
# called by  $Obc/rc/rc.xml

if [ $host = 'sbMb' ]; then
  [[ -f ~/music/joy ]] && bash $machBld/jo/toggleMusicJoy.sh
  source $machBld/jo/toggleMusicGood.sh
else
  notify-send -i /usr/share/icons/hicolor/16x16/apps/mpv.png "no good music on this machine"
fi

