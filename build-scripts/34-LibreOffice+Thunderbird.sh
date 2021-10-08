#!/bin/bash
# vim: fdl=1:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 LibreOffice Fresh install
sudo pacman -S libreoffice-fresh-en-gb
libreoffice  # first-run of LibreOffice - close it

#=> 0 Thunderbird 0 install
sudo pacman -S thunderbird-i18n-en-gb
thunderbird  # generates a dummy Profile, not to be hereafter used
sed -i '/Name=default-release/,/^$/ { s/IsRelative=1/IsRelative=0/; s/Path=.*/Path=\/mnt\/SD480GSSDPlus\/Dropbox\/JH\/T78-default-release/ }' ~/.thunderbird/profiles.ini  # requires Thunderbird not to be running
thunderbird  # (default-release) > Start

#=> 0 Thunderbird 0 remove

# #=> 1 LibreOffice configurations
# trap - debug  # turn off debug
# uc0=~/.config/libreoffice/4/user

# #==> bring in
# rm -r $uc0/config
# rm $uc0/registrymodifications.xcu
# uc1=$CrossPlatform/LibreOffice/j9o-HPP-user
# cp -r $uc1/config $uc0/config
# cp $uc1/registrymodifications.xcu $uc0/registrymodifications.xcu

# #==> export
# uc1=$CrossPlatform/LibreOffice/l3i-sbMb-user
# mkdir $uc1
# cp -r $uc0/config $uc1/config
# cp $uc0/registrymodifications.xcu $uc1/registrymodifications.xcu

