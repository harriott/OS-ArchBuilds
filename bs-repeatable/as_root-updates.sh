#!/bin/bash
# vim: se fdl=1:

set -v  # prints each statement here, including comments

#=> 0 updates
pacman -Syu
# reboot if kernel updated !
find /etc -type f -name "*pacnew"

