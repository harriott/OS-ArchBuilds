#!/bin/bash
# vim: se fdl=2:

# $OSAB/bs-1-into_jo/4-config.sh

set -ev  # quits on error, prints each statement here, including comments

#=> for Bash
# should've  cd ~/onGH/OS-ArchBuilds/
source nodes/Bash/export-Arch  # defines  $OSAB  and some dependents
    source $OSAB/nodes-set/shell.sh
    source $OSAB/nodes-set/jo-0-Bash-X.sh

#=> for broot
broot -- install
#  adds  source ~/.config/broot/launcher/bash/br  which gets me  br
#  but I keep that line in  $ABno/Bash/bashrc-generic

#=> for MIME database
mkdir -p ~/.local/share/mime/packages

#=> Ruby 4.x.x
rbenv install 4  # takes a while
read -p "- good to  rbenv global 4.0.5 ?"
rbenv global 4.0.5

#=> vimswap
[ -d ~/.vimswap ] || mkdir ~/.vimswap

