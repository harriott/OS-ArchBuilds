#!/bin/bash
# vim: set fdl=1 sw=2:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 NetworkManager - disable MAC address randomization
# # needed for  LIP120s81A4  to connect to  Jo-XA2
# sudo cp $machBld/etc/wifi_rand_mac.conf /etc/NetworkManager/conf.d/wifi_rand_mac.conf

#=> 0 NetworkManager dispatcher
sudo systemctl enable NetworkManager-dispatcher --now
# r /etc/NetworkManager/dispatcher.d /usr/lib/NetworkManager/dispatcher.d

# #=> 0 NetworkManager - network-manager-applet
# sudo pacman -S network-manager-applet

