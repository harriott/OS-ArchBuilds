#!/bin/bash
# vim: se fdl=2:

# bash $bSc/1-to_jo/2-config.sh

set -e

#=> 0 $ARCHBUILDS
cd $(dirname "${BASH_SOURCE[0]}")
. ../../$(uname -n)/export-machine
. ../../Bash/export-storage
read -p "\$ARCHBUILDS is $ARCHBUILDS - looks good?"

#=> 1 go slow
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 2 for broot
# broot -- install  # gets  br

#=> 2 grab mimeapps.list
cp ~/.config/mimeapps.list $machLg/jo/mimeappsList-m91

# #=> 2 for MediaWiki
# mkdir -p ~/.local/share/mime/packages

# #=> 2 prepare for nanorc
# mkdir -p /home/jo/.config/nano

# #=> 1 for Rootkit Hunter
# mkdir /home/jo/Arch

# #=> 1 tealdeer
# tldr --update

