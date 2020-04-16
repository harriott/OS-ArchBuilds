#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# Moto G4 plugged into back top right USB
#  ip link   reports it as   enp0s29f7u6
dhcpcd enp0s29f7u6
ping -c 3 8.8.8.8

# Have boot messages stay on tty1
mkdir /etc/systemd/system/dhcpcd@.service.d
cp ../../configFiles/etc/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

# default-icon-theme
pacman -S hicolor-icon-theme

# Ubuntu font family
pacman -S ttf-ubuntu-font-family

# place bashrc
cp $( dirname "${BASH_SOURCE[0]}" )/rootBashrc .bashrc

# KDE
pacman -S kde-applications plasma

# now login as jo

