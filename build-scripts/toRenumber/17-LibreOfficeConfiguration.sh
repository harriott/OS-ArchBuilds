#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh

uc0=~/.config/libreoffice/4/user
    rm -r $uc0/config
    rm $uc0/registrymodifications.xcu
uc1=$ITstack/OpenOffice/LibreOffice/j9o-HPP-user
    cp -r $uc1/config $uc0/config
    cp $uc1/registrymodifications.xcu $uc0/registrymodifications.xcu

