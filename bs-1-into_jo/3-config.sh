#!/bin/bash
# vim: se fdl=2:

# bash $OSAB/bs-1-into_jo/3-config.sh

set -e

#=> 1 go slow
set -v  # prints each statement here, including comments

#=> 2 for broot
broot -- install
#  adds  source ~/.config/broot/launcher/bash/br  which gets me  br
#  but I keep that line in  $OSAB/nodes-Bash/bashrc-generic

#=> 2 for  MIME database
mkdir -p ~/.local/share/mime/packages

