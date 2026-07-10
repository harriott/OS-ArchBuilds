#!/bin/bash
# vim: se fdl=2:

# bash $OSAB/bs-1-into_jo/3-config.sh

set -ev  # quits on error, prints each statement here, including comments

#=> 0 for broot
broot -- install
#  adds  source ~/.config/broot/launcher/bash/br  which gets me  br
#  but I keep that line in  $ABno/Bash/bashrc-generic

#=> 0 for  MIME database
mkdir -p ~/.local/share/mime/packages

#=> 0 vimswap
[ -d ~/.vimswap ] || mkdir ~/.vimswap

#=> 1 Ruby 4.x.x
rbenv install 4  # takes a while
read -p "- good to  rbenv global 4.0.5 ?"
rbenv global 4.0.5

