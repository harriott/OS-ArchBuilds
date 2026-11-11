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

#=> 3 reboot
read -p '- now reboot'

