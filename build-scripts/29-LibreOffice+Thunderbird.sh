#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 LibreOffice Fresh
sudo pacman -S libreoffice-fresh-en-gb
libreoffice  # first-run of LibreOffice - close it

#=> 0 Thunderbird
sudo pacman -S thunderbird-i18n-en-gb
thunderbird  # generates a dummy Profile, not to be hereafter used
sed -i '/Name=default-release/,/^$/ { s/IsRelative=1/IsRelative=0/; s/Path=.*/Path=\/mnt\/SD480GSSDPlus\/Dropbox\/JH\/TP\.default-release/ }' ~/.thunderbird/profiles.ini  # requires Thunderbird not to be running
thunderbird  # (default-release) > Start

#=> 1 LibreOffice configuration
trap - debug  # turn off debug
uc0=~/.config/libreoffice/4/user
    rm -r $uc0/config
    rm $uc0/registrymodifications.xcu
uc1=$CrossPlatform/LibreOffice/j9o-HPP-user
    cp -r $uc1/config $uc0/config
    cp $uc1/registrymodifications.xcu $uc0/registrymodifications.xcu

