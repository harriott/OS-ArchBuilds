#!/bin/bash
# vim: fdl=1:

# bash $bs/anytime/timeCorrection.sh

# check  http://time.is/  to see how much stray
sudo ntpd -qg
sudo hwclock --systohc

