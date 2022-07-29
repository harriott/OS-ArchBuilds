#!/bin/bash
# vim: fdl=1:

# iNet wireless daemon

#=> 1 iwd enable
sudo systemctl enable iwd.service --now

# #=> 2 iwd stop
# systemctl stop iwd.service

# #=> 3 iwd disable
# systemctl disable iwd.service

#=> 4 iwd check
sudo systemctl status iwd.service

