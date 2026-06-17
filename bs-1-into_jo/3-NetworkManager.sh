#!/bin/bash
# vim: fdl=1:

# NetworkManager

set -v  # prints each statement here, including comments

#=> 0 enable & start
sudo systemctl enable NetworkManager --now

# #=> 1 disable & stop
# systemctl disable NetworkManager.service --now

#=> 2 status
systemctl status NetworkManager.service

