#!/bin/bash
# vim: set et tw=0:

# bash -x <thisfile>.sh

# Automatic login to virtual console
# ls /etc/systemd/system
mkdir /etc/systemd/system/getty@tty1.service.d
cp ../configFiles/override.conf /etc/systemd/system/getty@tty1.service.d/override.conf
# reboot
