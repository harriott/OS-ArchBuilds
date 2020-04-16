#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

# Moto G4 plugged into back top right USB
#  ip link   reports it as   enp0s29f7u6
dhcpcd enp0s29f7u6
ping -c 3 8.8.8.8

# check local time correction
timedatectl status

## Reflector
pacman -S reflector
cd /etc/pacman.d
reflector --country France --age 12 --protocol https --sort rate --save mirrorlist
cat mirrorlist

