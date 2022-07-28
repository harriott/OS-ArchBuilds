#!/bin/bash
# vim: fdl=1:

#=> 1 iNet wireless daemon - enable
sudo systemctl enable iwd.service --now

# #=> 2 iwd 1 stop
# systemctl stop iwd.service

# #=> 2 iwd 2 disable
# systemctl disable iwd.service

