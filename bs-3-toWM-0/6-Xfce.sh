#!/bin/bash
# vim: set fdl=1:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

sudo pacman -S xfce4 xfce4-goodies
sudo pacman -S xfce4-indicator-plugin  # supposedly needed for Dropbox icon

