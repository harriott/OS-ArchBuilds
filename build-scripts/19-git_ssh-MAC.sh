#!/bin/bash
# vim: set fdl=1 sw=2:

# after  $CrossPlatform/git/remote2.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 NetworkManager - disable MAC address randomization
# # needed for  LIP120s81A4  to connect to  Jo-XA2
# sudo cp $MACHINE/etc/wifi_rand_mac.conf /etc/NetworkManager/conf.d/wifi_rand_mac.conf

#=> 0 NetworkManager - network-manager-applet
sudo pacman -S network-manager-applet

# #=> 0 SSH config
# ln -sf $CrossPlatform/SSHconfig/LIP120s81A4 ~/.ssh/config
# ln -sf $CrossPlatform/SSHconfig/M587637 ~/.ssh/config
# ln -sf $CrossPlatform/SSHconfig/sbMb ~/.ssh/config

# #=> 1 git 0 check configuration
# git config -l

# #=> 1 git 1 first SSH to GitHub
# # should see:  RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
# ssh -T git@github.com  # "yes"
# cat ~/.ssh/known_hosts
# cp ~/.ssh/known_hosts ~/known_hosts-la5

