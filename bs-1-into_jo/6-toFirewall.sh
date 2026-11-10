#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-1-into_jo/6-toFirewall.sh

set -e  # quits on error

#=> 0 check $OSAB
read -p "\$OSAB is $OSAB - looks good?"

#=> 2 ClamAV 0 install
sudo freshclam  # takes a long time to update the database!

#=> 2 Firewalld 0
# 1 get & enable
sudo pacman -S firewalld
sudo systemctl enable firewalld --now
sleep 2

# 2 active zone
sudo firewall-cmd --set-default-zone=home

#=> 2 Firewalld 1 port for Avahi
# open UDP port 5353
sudo firewall-cmd --permanent --zone=home --add-port 5353/udp

# #=> 2 Firewalld 1 ports for KDE Connect
# sudo firewall-cmd --zone=home --permanent --add-port=1714-1764/tcp
# sudo firewall-cmd --zone=home --permanent --add-port=1714-1764/udp

#=> 2 Firewalld 2 restart
sudo systemctl restart firewalld.service
sleep 2

#=> 2 Firewalld 3 check
sudo firewall-cmd --state
sudo firewall-cmd --info-zone=home

