#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

ARCHBUILDS=/ArchBuilds

# #=> allow dhcpcd without pw
# bash -c "cat $ARCHBUILDS/etc/sudoers-dhcpcd >> /etc/sudoers"
# visudo -c -f /etc/sudoers
# tail -n 2 /etc/sudoers

# #=> ClamAV 0 install
# pacman -S clamav
# freshclam  # takes a long time!

#=> Firewalld 0
# 1 get & enable
pacman -S firewalld
systemctl enable firewalld --now

# 2 active zone
firewall-cmd --set-default-zone=home

#=> Firewalld 1 port for Avahi
# open UDP port 5353
firewall-cmd --permanent --zone=home --add-port 5353/udp

# #=> Firewalld 1 ports for KDE Connect
# firewall-cmd --zone=home --permanent --add-port=1714-1764/tcp
# firewall-cmd --zone=home --permanent --add-port=1714-1764/udp

#=> Firewalld 2 restart
systemctl restart firewalld.service

#=> Firewalld 3 check
firewall-cmd --state
firewall-cmd --info-zone=home

