#!/bin/bash
# vim: fdl=1:

set -ev

# LibreOffice configurations

#=> 0 config directory
uc0=~/.config/libreoffice/4/user

#=> 1 import
rm -r $uc0/config
rm $uc0/registrymodifications.xcu
uc1=$CrPl/LibreOffice/l3i-sbMb-user
cp -r $uc1/config $uc0/config
cp $uc1/registrymodifications.xcu $uc0/registrymodifications.xcu

#=> 1 export
uc1=$CrPl/LibreOffice/lbg-sbMb-user
mkdir $uc1
cp -r $uc0/config $uc1/config
cp $uc0/registrymodifications.xcu $uc1/registrymodifications.xcu

