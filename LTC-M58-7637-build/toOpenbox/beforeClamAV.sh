#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

# iw
pacman -S iw

# iwd
pacman -S iwd
systemctl enable iwd.service
systemctl start iwd.service
systemctl status iwd.service

# nnn
pacman -S nnn

# nnn plugins
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

