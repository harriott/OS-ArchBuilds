#!/bin/bash
# vim: set fdl=1 sw=2:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> NetworkManager dispatcher
sudo systemctl enable NetworkManager-dispatcher --now
sudo cp $ARCHBUILDS/etc/NMdispatcher-ntpd.sh /etc/NetworkManager/dispatcher.d/ntpd.sh
sudo chmod 755 /etc/NetworkManager/dispatcher.d/ntpd.sh
# r /etc/NetworkManager/dispatcher.d /usr/lib/NetworkManager/dispatcher.d

# #=> NetworkManager - network-manager-applet
# sudo pacman -S network-manager-applet

