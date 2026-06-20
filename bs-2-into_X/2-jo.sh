#!/bin/bash
# vim: fdl=1:

set -ev  # quits on error, prints each statement here, including comments

read -p "\$OSAB is $OSAB - looks good?"

#=> 2 make AUR directories
mkdir ~/Arch/AUR ~/Arch/AURdev-clone ~/Arch/AURdev-make

#=> 2 terminal-colors
pipx install terminal-colors

