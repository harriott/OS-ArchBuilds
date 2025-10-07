#!/bin/bash
# vim: sw=2:

# chmod 755 $ABjo/music/music_rotate.sh
#  bash ~/.config/music_rotate.sh  or just  music_rotate
#  symlinked in my  $OSAB/nodes-set/jo-2-whenWM-1.sh
#  rotate contents of  ~/music

#  this could be faster on the db with different db_file's ($ABjo/music/MPD/mpd.conf),
#   but advantage here is anything could be dumped into  ~/music

mm="$HOME/music/music"
if [ -f $mm ]; then
  mmf=$(cat $mm)
else
  mmf=empty
fi
rm ~/music/CAM-* > /dev/null 2>&1
mdlm () {
  echo $2 > $mm
  if [ -d $Drpbx/Cop/AM-$1 ]; then
    ln -sf $Drpbx/Cop/AM-$1 ~/music/CAM-$1
    nsmpv "~/music  now has  CAM-$1"
  fi
}
nsmpv(){ notify-send -i /usr/share/icons/hicolor/16x16/apps/mpv.png "$1"; }
nsmpv '~/music  now empty'
if [ $mmf == 'best' ]; then
  mdlm joy-copies joy
  # echo joy > $mm
elif [ $mmf == 'joy' ]; then
  mdlm good good
  mdlm good-US good
  # echo good > $mm
else
  mdlm best best
  # echo best > $mm
fi

