#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> Updates
# pacman -Syu
# reboot if kernel updated !
# true

