#!/bin/bash
# vim: fdl=1:

# iNet wireless daemon
# for  $ulLinux/iwctl-connect.sh

# #=> 1 iwd enable
# systemctl enable iwd.service --now

# #=> 2 iwd stop
# systemctl stop iwd.service

# #=> 3 iwd disable
# systemctl disable iwd.service

#=> 4 iwd disable & stop
systemctl disable iwd.service --now

#=> 6 iwd check
systemctl status iwd.service

