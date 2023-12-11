#!/bin/bash -eu

# Joseph Harriott - Wed 08 Feb 2023
# libpulse's  pactl  command to toggle audio mute
# Because  PNMixer  won't unmute...
# sed -i '/VolMuteKey/ s/=.*/=/' ~/.config/pnmixer/config; pkill pnmixer; pnmixer &

# (chmod 755 $machBld/jo/awesome/audio/pactlMuteUnmute.sh)
# called by  $machBld/jo/awesome/rc.lua  with  XF86AudioMute
# symlinked in my  $OSAB/bs-symlinks/jo-1-awesome.sh

pactl set-sink-mute 0 toggle
if [[ $(pacmd list-sinks | awk '/muted/ { print $2 }') == 'yes' ]]; then
    notify-send -i ~/.config/awesome/audio/pnmixer-muted-16x16.png 'audio muted'
else
    notify-send -i ~/.config/awesome/audio/pnmixer-16x16.png 'audio'
fi

