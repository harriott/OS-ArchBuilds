#!/bin/bash

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> Updates
pacman -Syu
# reboot if kernel updated !
find /etc -type f -name "*pacnew"

