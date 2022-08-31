#!/bin/bash
# vim: fdl=1:

set -ev
trap read debug  # puts a read request after each executable line

# #=> 0 LibreOffice Fresh install
# sudo pacman -S libreoffice-fresh-en-gb
# libreoffice  # first-run of LibreOffice - close it

#=> 0 Pandoc reference.odt
pandoc -o ~/.pandoc/custom-reference.odt --print-default-data-file reference.odt

# #=> 0 Thunderbird - install
# sudo pacman -S thunderbird-i18n-en-gb
# thunderbird  # generates a dummy Profile, not to be hereafter used

# #=> 1 LibreOffice configurations
# trap - debug  # turn off debug
# uc0=~/.config/libreoffice/4/user

# #==> import
# rm -r $uc0/config
# rm $uc0/registrymodifications.xcu
# uc1=$CrPl/LibreOffice/l3i-sbMb-user
# cp -r $uc1/config $uc0/config
# cp $uc1/registrymodifications.xcu $uc0/registrymodifications.xcu

# #==> export
# uc1=$CrPl/LibreOffice/lbg-sbMb-user
# mkdir $uc1
# cp -r $uc0/config $uc1/config
# cp $uc0/registrymodifications.xcu $uc1/registrymodifications.xcu

# #=> 1 Thunderbird 1 T91-default-release
# Drloc=SD480GSSDPlus  # Path=/mnt/SD480GSSDPlus/Dropbox/JH/T91-default-release
# Drloc=SDEP128G
# defrel=(
#   sed -i
#   "/Name=default-release/,/^$/ { s/IsRelative=1/IsRelative=0/; s:Path=.*:Path=/mnt/$Drloc/Dropbox/JH/T91-default-release: }"
#   ~/.thunderbird/profiles.ini
# )
# "${defrel[@]}"
# thunderbird  # (default-release) > Start

#=> 1 Thunderbird 2 backup profile
rsync -irtv --delete ~/.thunderbird/ $machBld/jo/thunderbird

#=> 1 Thunderbird 2 thunderbird_safely
ln -sf $ARCHBUILDS/jo/TS/locks.sh ~/Arch/locks.sh
sudo ln -sf $ARCHBUILDS/jo/TS/ts.sh /usr/local/bin/thunderbird_safely
sudo ln -sf $ARCHBUILDS/jo/TS/ts.desktop /usr/share/applications/thunderbird_safely.desktop

