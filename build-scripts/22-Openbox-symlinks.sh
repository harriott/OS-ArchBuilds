#!/bin/bash # vim: fdm=expr fdl=1 ft=shbuild:

# bash <thisfile>.sh  to fix my Openbox install

#=> 0 $MACHINE
ARCHBUILDS=~/ArchBuilds
ARCHBUILDS=/mnt/SDSSDA240G/Dropbox/JH/Sh-81A4/ITS-onGitHub/ArchBuilds
    MACHINE=$ARCHBUILDS/AVT661
    # MACHINE=$ARCHBUILDS/sbMb
    Openbox=$ARCHBUILDS/jo/Openbox

#=> 1 symlinks for Openbox itself
# sort this list by last use of "~":  :sort /,*\~/

ln -sf $MACHINE/jo/openbox/schema.pl  ~/.config/obmenu-generator/schema.pl
ln -sf $MACHINE/jo/openbox/autostart  ~/.config/openbox/autostart
ln -sf $Openbox/openbox/menu.xml      ~/.config/openbox/menu.xml
ln -sf $Openbox/openbox/rc.xml        ~/.config/openbox/rc.xml

#=> 1 xinitrc
ln -sf $MACHINE/jo/xinitrc ~/.xinitrc

