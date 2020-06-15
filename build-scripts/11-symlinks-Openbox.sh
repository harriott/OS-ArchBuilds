#!/bin/bash
# vim: fdm=expr fdl=1 ft=shbuild:

# bash <thisfile>.sh  to fix my Openbox install

# sort these lists by last use of "~":  :sort /,*\~/

#=> symlinks for Openbox itself

ln -sf $MACHINE/jo/openbox/schema.pl                   ~/.config/obmenu-generator/schema.pl
ln -sf $MACHINE/jo/openbox/autostart                   ~/.config/openbox/autostart
ln -sf $Openbox/openbox/menu.xml                       ~/.config/openbox/menu.xml
ln -sf $Openbox/openbox/rc.xml                         ~/.config/openbox/rc.xml

