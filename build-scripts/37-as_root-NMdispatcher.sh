#!/bin/bash

# bash 37-NMdispatcher.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

#=> 0 ARCHBUILDS
. 05-exports.sh

#=> 1 NetworkManager dispatcher
systemctl enable NetworkManager-dispatcher --now
cp $ARCHBUILDS/etc/NMdispatcher-ntpd.sh /etc/NetworkManager/dispatcher.d/ntpd.sh
chmod 755 /etc/NetworkManager/dispatcher.d/ntpd.sh

