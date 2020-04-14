#!/bin/bash
# vim: set et tw=0:

# sudo bash -x <thisfile>.sh

# Disable clearing of boot messages
cp ../configFiles/noclear.conf /etc/systemd/system/getty@tty1.service.d/noclear.conf
# ls /etc/systemd/system/getty@tty1.service.d
