#!/bin/bash
# vim: fdl=1:

# $OSAB/bs-2-into_dscp/4-00-keyboard_conf.sh

#=> generate 00-keyboard.conf
# XKEYBOARD-CONFIG(7)
# /usr/share/xkeyboard-config-2/rules/base.lst

# will need to restart X to get country key maps

# UK:
# sudo localectl --no-convert set-x11-keymap gb pc105

# Starting choice for  HPEB840G3x:
sudo localectl --no-convert set-x11-keymap fr pc105

cp /etc/X11/xorg.conf.d/00-keyboard.conf ~/00-keyboard.conf
cat ~/00-keyboard.conf  # move later to  $machLg/etc/00-keyboard.conf

echo 're-login to Plasma for Fr keymap, reboot for Fr in Plasma Login Manager'

