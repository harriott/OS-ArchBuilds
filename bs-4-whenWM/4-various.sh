#!/bin/bash

# $ bash $bSc/4-whenWM/4-various.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 Hugo
sudo pacman -S hugo

# #=> 0 LibreOffice Fresh install
# sudo pacman -S libreoffice-fresh-en-gb
# libreoffice  # first-run of LibreOffice - close it

# #=> 0 NetworkManager - network-manager-applet
# sudo pacman -S network-manager-applet

# #=> 0 Pandoc reference.odt
# pandoc -o ~/.pandoc/custom-reference.odt --print-default-data-file reference.odt

# #=> 0 pavucontrol
# sudo pacman -S pavucontrol  # for pnmixer
# # now:
# #  1. right-click on PNMixer > Preferences > Behaviour > Volume Control Command > pavucontrol
# #  2. tweak  ~/.config/pnmixer/config
# true

# #=> 0 Thunderbird - install
# sudo pacman -S thunderbird-i18n-en-gb
# thunderbird  # generates a dummy Profile, not to be hereafter used

#=> 0 yaml2toml
pipx install yaml2toml

#=> 1 check $OSAB
read -p "\$OSAB is $OSAB - looks good?"

# #=> 2 NetworkManager dispatcher
# sudo systemctl enable NetworkManager-dispatcher --now
# sudo cp $OSAB/etc/NMdispatcher-ntpd.sh /etc/NetworkManager/dispatcher.d/ntpd.sh
# sudo chmod 755 /etc/NetworkManager/dispatcher.d/ntpd.sh
# # vifm /etc/NetworkManager/dispatcher.d /usr/lib/NetworkManager/dispatcher.d

#=> 2 Thunderbird 1 T91-default-release
p=~/.thunderbird/profiles.ini
sed -i '2i\\;vim: fdl=1:' $p
sed -i '1i\\' $p
sed -i "/Name=default-release/,/^$/ { s/IsRelative=1/IsRelative=0/; s:Path=.*:Path=$T91: }" $p

#=> 2 Thunderbird 2 backup profile
rsync -irtv --delete ~/.thunderbird/ $machLg/jo/thunderbird

#=> 2 Thunderbird 3 first run
thunderbird > (default-release) > Start

