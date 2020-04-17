#!/bin/bash
# vim: set et tw=0:

# sudo bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# Automatic login to virtual console
ls /etc/systemd/system
mkdir /etc/systemd/system/getty@tty1.service.d
cp $( dirname "${BASH_SOURCE[0]}" )/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf
reboot

