#!/bin/bash
# vim: set et tw=0:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# Updates
# -------
sudo pacman -Syu
sudo pacman -S base-devel  # for make etc

