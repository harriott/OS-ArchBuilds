#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-repeatable/timeCorrection.sh

# check  http://time.is/  to see how much stray
sudo ntpd -qg
sudo hwclock --systohc

