#!/bin/bash

set -ev  # quits on error, prints each statement here, including comments
trap read debug  # puts a read request after each executable line

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 $ARCHBUILDS
. $ARCHBUILDS/Bash/export-storage
echo "\$ARCHBUILDS is $ARCHBUILDS"
read -p "- looks good?"

#=> 1 allow dhcpcd without pw
bash -c "cat $ARCHBUILDS/etc/sudoers-dhcpcd >> /etc/sudoers"
visudo -c -f /etc/sudoers
tail -n 2 /etc/sudoers

#=> 1 ClamAV 0 install
pacman -S clamav
freshclam  # takes a long time!

#=> 1 Firewalld 0
# 1 get & enable
pacman -S firewalld
systemctl enable firewalld --now

# 2 active zone
firewall-cmd --set-default-zone=home

#=> 1 Firewalld 1 port for Avahi
# open UDP port 5353
firewall-cmd --permanent --zone=home --add-port 5353/udp

# #=> 1 Firewalld 1 ports for KDE Connect
# firewall-cmd --zone=home --permanent --add-port=1714-1764/tcp
# firewall-cmd --zone=home --permanent --add-port=1714-1764/udp

#=> 1 Firewalld 2 restart
systemctl restart firewalld.service

#=> 1 Firewalld 3 check
firewall-cmd --state
firewall-cmd --info-zone=home

