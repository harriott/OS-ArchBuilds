#!/bin/bash
# vim: se fdl=2:

#=> 0 $ARCHBUILDS
cd $(dirname "${BASH_SOURCE[0]}")
. ../$(uname -n)/export-machine
. ../Bash/export-storage
echo "\$ARCHBUILDS is $ARCHBUILDS"
read -p "- looks good?"

#=> 1 go slow
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 2 for broot
# broot -- install  # gets  br

# #=> 2 for MediaWiki
# mkdir -p ~/.local/share/mime/packages

# #=> 2 prepare for nanorc
# mkdir -p /home/jo/.config/nano

#=> 2 ranger - fix :trash
sudo rg '.path for f in files' /usr/lib/python3.10/site-packages/ranger/core/actions.py
sudo sed -i 's/.path for f in files]/ if isinstance(f, str) else f.path for f in files]/' /usr/lib/python3.10/site-packages/ranger/core/actions.py

# #=> 1 for Rootkit Hunter
# mkdir /home/jo/Arch

# #=> 1 tealdeer
# tldr --update

