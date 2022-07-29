#!/bin/bash

# NetworkManager

#=> 0 enable
systemctl enable NetworkManager.service --now

#=> 1 status
systemctl status NetworkManager.service | cat

#=> 2 disable
systemctl disable NetworkManager.service --now

