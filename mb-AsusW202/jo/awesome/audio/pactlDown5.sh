#!/bin/bash -eu

# Joseph Harriott - Wed 08 Feb 2023
# libpulse's  pactl  command to lower volume by 5%
# Because letting  PNMixer  lower volume through  pavucontrol  displays as unmuted when it's not.
# sed -i '/VolDownKey/ s/=.*/=/' ~/.config/pnmixer/config; pkill pnmixer; pnmixer &

# (chmod 755 $machBld/jo/awesome/audio/pactlUp5.sh)
# called by  $machBld/jo/awesome/rc.lua  through  XF86AudioLowerVolume
# symlinked in my  $OSAB/bs-symlinks/jo-1-awesome.sh

pactl set-sink-mute 0 false ; pactl set-sink-volume 0 -5%

