#!/bin/bash
# vim: fdl=1:

# $ bash $OSAB/bs-4-whenWM/5-LibreOfficeConfig.sh

set -ev

# LibreOffice configurations ($ITsCP/LibreOffice/Buildup.txt)

#=> 0 config directory
uc0=~/.config/libreoffice/4/user

#=> 1 import
[ -d "$uc0/config" ] && rm -r $uc0/config
[ -s "$uc0/registrymodifications.xcu" ] && rm $uc0/registrymodifications.xcu
uc1=$ITsCP/documenting/LibreOffice/user-o38-HPEB840G362
cp -r $uc1/config $uc0/config
cp $uc1/registrymodifications.xcu $uc0/registrymodifications.xcu

#=> 1 export
uc1=$ITsCP/documenting/LibreOffice/user-lcu-sbMb
mkdir $uc1
cp -r $uc0/config $uc1/config
cp $uc0/registrymodifications.xcu $uc1/registrymodifications.xcu

