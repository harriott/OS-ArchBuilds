#!/bin/bash
# vim: sw=2:

# toggle symlinks to good music in  ~/music
# -----------------------------------------

# chmod 755 $Openbox/toggleMusicJoy.sh
# symlinked in  $OSAB/bs-symlinks/jo-2-whenWM-0.sh  to  ~/.config/openbox/toggleMusicJoy.sh
# called by  $Obc/rc/rc.xml

if [ -f ~/music/joy ]; then
  rm -r ~/music/CAM-joy
  rm ~/music/joy
  ln -sf $Storage/Dropbox/CAM-best ~/music/CAM-best
  notify-send -i /usr/share/icons/hicolor/16x16/apps/mpv.png "best music"
else
  rm -r ~/music/CAM-best
  ln -sf $Storage/Dropbox/CAM-joy ~/music/CAM-joy
  touch ~/music/joy
  notify-send -i /usr/share/icons/hicolor/16x16/apps/mpv.png "joy music"
fi

