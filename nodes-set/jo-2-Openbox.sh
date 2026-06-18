#!/bin/bash
# vim: fdl=1:

# bash $OSAB/nodes-set/jo-1-Openbox.sh

#=> Openbox

ln -sf $Obc/schema.pl ~/.config/obmenu-generator/schema.pl
eza -la ~/.config/obmenu-generator/schema.pl

# sort by last use of "~":  :sort /,*\~/

ln -sf $Obc/autostart               ~/.config/openbox/autostart
ln -sf $Obc/rc/fixCopyQ.sh          ~/.config/openbox/fixCopyQ.sh
ln -sf $ABjo/wm/importScreenshot.sh ~/.config/openbox/importScreenshot.sh
ln -sf $Obc/menu.xml                ~/.config/openbox/menu.xml
ln -sf $machBld/jo/openbox/rc.xml   ~/.config/openbox/rc.xml

# :Tabularize /\~/l1r0

eza -la ~/.config/openbox

#=> Openbox - Alacritty with Nvim
ln -sf $machBld/jo/openbox/AlacrittyNvim.sh ~/.config/openbox/AlacrittyNvim.sh
# e -la ~/.config/openbox/AlacrittyNvim.sh

