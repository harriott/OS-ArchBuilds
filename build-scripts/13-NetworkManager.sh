#!/bin/bash
# vim: fdl=1:

# NetworkManager

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 enable & start
sudo systemctl enable NetworkManager --now

# #=> 1 disable & stop
# systemctl disable NetworkManager.service --now

#=> 2 status
systemctl status NetworkManager.service | cat

