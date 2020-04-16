#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request before executing a line

# Moto G4 plugged into back top right USB
#  ip link   reports it as   enp0s29f7u6
dhcpcd enp0s29f7u6
ping -c 3 8.8.8.8

# Updates
pacman -Syu

# Have boot messages stay on tty1 - step 1
mkdir /etc/systemd/system/dhcpcd@.service.d
