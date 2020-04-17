#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -x
trap read debug

# Updates
pacman -Syu

# Openbox & tint2
pacman -S openbox tint2

# configure Openbox
pacman -S lxappearance-obconf obconf

# startx from Console

# gsimplecal

