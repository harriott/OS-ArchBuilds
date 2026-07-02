#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-5-when_myDrA/LibreOfficeConfig.sh

set -ev

# LibreOffice configurations ($cITCP/documenting/LibreOffice/Buildup.txt)

#=> 0 config directories
hu="$HOME/.config/libreoffice/4/user"
# cu="$cITCP/documenting/LibreOffice/user-o38-HPEB840G362"
cu="$cITCP/documenting/LibreOffice/user-q71-sbMb-mature"
# cu="$cITCP/documenting/LibreOffice/user-q71-HPEB840G38-pristine"

#=> 1 implement
cp $cu/registrymodifications.xcu $hu/registrymodifications.xcu
rsync -irtv --delete $cu/config/ $hu/config

# #=> 1 get
# mkdir $cu
# cp -r $hu/config $cu/config
# cp $hu/registrymodifications.xcu $cu/registrymodifications.xcu

