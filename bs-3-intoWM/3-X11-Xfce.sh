#!/bin/bash
# vim: set fdl=1:

# bash <thisfile>.sh
set -v  # prints each statement here, including comments
shopt -s expand_aliases; alias pikn='pikaur -S --needed --keepbuilddeps'

pikn xfce4 xfce4-goodies
pikn xfce4-indicator-plugin  # supposedly needed for Dropbox icon
pikn libgsf xarchiver  # for  Thunar

