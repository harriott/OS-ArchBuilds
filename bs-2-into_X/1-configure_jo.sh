#!/bin/bash

set -ev  # quits on error, prints each statement here, including comments

read -p "\$OSAB is $OSAB - looks good?"

#=> 2 GnuPG directory
gpg -k  # creates & populates  ~/.gnupg

# #=> 2 make AUR directories
# mkdir ~/Arch/AUR ~/Arch/AURdev-clone ~/Arch/AURdev-make

# #=> 2 Pandoc directory
# mkdir -p ~/.pandoc/defaults

#=> 2 ranger scope.sh executable
chmod +x $OSAB/nodes-terminal/ranger/scope.sh

#=> 2 terminal-colors
pipx install terminal-colors

# #=> 2 Zathura
# mkdir ~/.config/zathura

