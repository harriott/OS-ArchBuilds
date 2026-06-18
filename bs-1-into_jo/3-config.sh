#!/bin/bash
# vim: se fdl=2:

# bash $OSAB/bs-1-into_jo/3-config.sh

set -e
set -v  # prints each statement here, including comments

#=> for broot
broot -- install
#  adds  source ~/.config/broot/launcher/bash/br  which gets me  br
#  but I keep that line in  $OSAB/nodes-Bash/bashrc-generic

#=> for  MIME database
mkdir -p ~/.local/share/mime/packages

#=> vimswap
[ -d ~/.vimswap ] || mkdir ~/.vimswap

