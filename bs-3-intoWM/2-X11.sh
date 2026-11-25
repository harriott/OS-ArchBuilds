#!/bin/bash
# vim: set fdl=1 sw=2:

# $OSAB/bs-3-intoWM/2-X11.sh

set -v  # prints each statement here, including comments
shopt -s expand_aliases; source $AjB/alias_pikaur  # pikn, prs

#=> hw
pikn xf86-input-wacom
pikn xorg-xev

#=> hw - graphical card 0
pikn xorg-xrandr  # $OSL/QR/QR.md
pikn xorg-xvidtune  # $OSL/QR/QR.md

