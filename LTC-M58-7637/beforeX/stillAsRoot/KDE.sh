#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request before executing a line

# Have boot messages stay on tty1 - step 2
cp $( dirname "${BASH_SOURCE[0]}" )/no-wait.conf /etc/systemd/system/dhcpcd@.service.d/no-wait.conf

# default-icon-theme was already there
# pacman -S hicolor-icon-theme

# Ubuntu font family
pacman -S ttf-ubuntu-font-family

# place bashrc
cp $( dirname "${BASH_SOURCE[0]}" )/rootBashrc .bashrc

# NeoMutt
pacman -S neomutt

# KDE
pacman -S kde-applications plasma
# phonon-qt5

# now unmount this device and then login as jo

