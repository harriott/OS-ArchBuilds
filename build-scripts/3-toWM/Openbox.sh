#!/bin/bash
# vim: fdl=1:

if [[ $(id -u) > 0 ]]; then echo "Run this as root!"; exit; fi

set -ev
trap read debug  # puts a read request after each executable line

#=> Openbox environment
# configure Openbox
pacman -S lxappearance-obconf obconf

# Gmrun
pacman -S gmrun

# Openbox & tint2
pacman -S openbox tint2

