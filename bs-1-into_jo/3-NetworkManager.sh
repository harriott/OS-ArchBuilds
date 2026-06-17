#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-1-into_jo/3-NetworkManager.sh

set -v  # prints each statement here, including comments

#=> 0 enable & start
sudo systemctl enable NetworkManager --now

# #=> 1 disable & stop
# systemctl disable NetworkManager.service --now

#=> 2 status
systemctl status NetworkManager.service

