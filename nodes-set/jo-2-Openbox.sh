#!/bin/bash
# vim: fdl=1:

# source $OSAB/nodes-set/jo-2-Openbox.sh

#=> Openbox

ln -sf $Obc/schema.pl ~/.config/obmenu-generator/schema.pl
es ~/.config/obmenu-generator/schema.pl

# sort by last use of "~":  :sort /,*\~/

ln -sf $Obc/autostart               ~/.config/openbox/autostart
ln -sf $Obc/rc/fixCopyQ.sh          ~/.config/openbox/fixCopyQ.sh
ln -sf $ABjo/wm/importScreenshot.sh ~/.config/openbox/importScreenshot.sh
ln -sf $Obc/menu.xml                ~/.config/openbox/menu.xml
ln -sf $ABnm/jo/openbox-rc.xml      ~/.config/openbox/rc.xml
ln -sf $Openbox/shiftPrtSc.sh       ~/.config/openbox/shiftPrtSc.sh

# :Tabularize /\~/l1r0

es ~/.config/openbox

