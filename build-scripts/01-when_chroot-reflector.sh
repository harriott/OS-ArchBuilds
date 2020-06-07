#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# to be sourced from a parent build script

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 2 better mirrorlist
# to be run as root
cd /etc/pacman.d
reflector --country France --age 12 --protocol https --sort rate --save mirrorlist
cat mirrorlist
pacman -Syyuu
cd ~

