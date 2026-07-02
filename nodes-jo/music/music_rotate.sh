#!/bin/bash
# vim: sw=2:

# rotate contents of  ~/music
#  . $ABjo/music/music_rotate.sh
#  managed in my  $OSAB/nodes-set/jo-2-whenWM-1.sh
#  music_rotate
#   $OSAB/mb-DOP3040D11S/build.txt
#   $OSAB/mb-sbMb/build.txt
#   $ABjo/music/music_rotate.desktop

#  this could be faster on the db with different db_file's ($ABjo/music/MPD/mpd.conf),
#   but advantage here is anything could be dumped into  ~/music

ml="$HOME/music/linked"
if [ -f $ml ]; then
  mrf=$(cat $ml)
else
  mrf=empty
fi
rm ~/music/* > /dev/null 2>&1
mdlm () {
  if [ -d $Drpbx/music/$1 ]; then
    ln -sf $Drpbx/music/$1 ~/music/ln-$1
    nsmpv "~/music  now has  ln-$1"
  fi
} # make dir link music
nsmpv(){ notify-send -i /usr/share/icons/hicolor/16x16/apps/mpv.png "$1"; }
# notify-send -i /usr/share/icons/hicolor/16x16/apps/mpv.png "= mpv notification"
nsmpv '~/music  now empty'
if [ $mrf == 'best' ]; then
  mdlm joy-copies
  echo joy > $ml
elif [ $mrf == 'joy' ]; then
  mdlm good
  mdlm good-Eurafrasia-UK
  mdlm good-tA-North-US
  echo good > $ml
else
  mdlm best best
  echo best > $ml
fi
cd ~/music  # only works if this file is sourced

