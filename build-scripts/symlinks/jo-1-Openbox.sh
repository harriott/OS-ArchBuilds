#!/bin/bash
# vim: fdl=1:

# bash $bSc/anytime/symlinks-jo-1-Openbox.sh

#=> symlinks for Openbox

ln -sf $Openbox/openbox/schema.pl ~/.config/obmenu-generator/schema.pl
exa -la ~/.config/obmenu-generator/schema.pl

# sort by last use of "~":  :sort /,*\~/

ln -sf $Openbox/openbox/autostart/autostart    ~/.config/openbox/autostart
ln -sf $Openbox/openbox/rc/importScreenshot.sh ~/.config/openbox/importScreenshot.sh
ln -sf $Openbox/openbox/menu.xml               ~/.config/openbox/menu.xml
ln -sf $Openbox/openbox/rc/rc.xml              ~/.config/openbox/rc.xml

exa -la ~/.config/openbox

