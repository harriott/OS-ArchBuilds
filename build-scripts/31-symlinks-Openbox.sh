#!/bin/bash
# vim: fdl=1:

# bash <thisfile>

#=> symlinks for Openbox itself
# sort these lists by last use of "~":  :sort /,*\~/

ln -sf $Openbox/openbox/schema.pl ~/.config/obmenu-generator/schema.pl
ln -sf $Openbox/openbox/autostart/autostart ~/.config/openbox/autostart
ln -sf $Openbox/openbox/rc/importScreenshot.sh ~/.config/openbox/importScreenshot.sh
ln -sf $Openbox/openbox/rc/tmuxBufferToX11clipboard.sh ~/.config/openbox/tmuxBufferToX11clipboard.sh
ln -sf $Openbox/openbox/menu.xml ~/.config/openbox/menu.xml
ln -sf $Openbox/openbox/rc/rc.xml ~/.config/openbox/rc.xml
ln -sf $ARCHBUILDS/jo/Openbox/cmusqueue.sh ~/Arch/cmusqueue.sh

find ~ -mindepth 3 -maxdepth 3 -type l -ls

