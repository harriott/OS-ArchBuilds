#!/bin/bash
# vim: sw=2:

# toggle symlinks to good music in  ~/music
# -----------------------------------------

# called by  $Openbox/toggleMusicGood.sh

if [ -f ~/music/good ]; then
  rm -r ~/music/CAM-good
  rm -r ~/music/CAM-good-tA-North-US
  rm ~/music/good
  notify-send -i /usr/share/icons/hicolor/16x16/apps/mpv.png "good music removed"
else
  ln -sf /mnt/SDU3D1TB/Dropbox/CAM-good ~/music/CAM-good
  ln -sf /mnt/SDU3D1TB/Dropbox/CAM-good-tA-North-US ~/music/CAM-good-tA-North-US
  touch ~/music/good
  notify-send -i /usr/share/icons/hicolor/16x16/apps/mpv.png "good music added"
fi

