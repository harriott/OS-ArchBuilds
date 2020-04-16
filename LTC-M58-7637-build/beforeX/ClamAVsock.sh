#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

# Moto G4 plugged into back top right USB
#  ip link   reports it as   enp0s29f7u6
dhcpcd enp0s29f7u6
ping -c 3 8.8.8.8

# as freshclam triggered warning "Clamd was NOT notified"
touch /run/clamav/clamd.ctl
chown clamav:clamav /run/clamav/clamd.ctl
freshclam

# ClamAV daemon
systemctl enable clamav-daemon.service
systemctl start clamav-daemon.service
# freshclam daemon
systemctl enable clamav-freshclam.service
systemctl start clamav-freshclam.service

