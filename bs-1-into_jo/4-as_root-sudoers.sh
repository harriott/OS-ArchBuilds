#!/bin/bash

# sudo bash $OSAB/bs-1-into_jo/3-NetworkManager.sh

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

nvim -O /etc/sudoers $OSAB/extra-etc/sudoers/sudoers -c 'windo difft'
visudo -c -f /etc/sudoers  # essential!
grep timestamp_timeout /etc/sudoers
tail -n 7 /etc/sudoers

