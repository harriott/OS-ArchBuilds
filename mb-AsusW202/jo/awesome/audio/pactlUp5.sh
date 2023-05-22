#!/bin/bash -eu

# Joseph Harriott - Wed 08 Feb 2023
# libpulse's  pactl  command to raise volume by 5%
# Because letting  PNMixer  raise volume through  pavucontrol  displays as unmuted when it's not.
# sed -i '/VolUpKey/ s/=.*/=/' ~/.config/pnmixer/config; pkill pnmixer; pnmixer &

# (chmod 755 $machBld/jo/awesome/audio/pactlUp5.sh)
# called by  $machBld/jo/awesome/rc.lua  through  XF86AudioRaiseVolume
# symlinked in my  $bSc/symlinks/jo-1-awesome.sh

pactl set-sink-mute 0 false ; pactl set-sink-volume 0 +5%

