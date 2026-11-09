#!/bin/bash
# vim: se fdl=2:

# $OSAB/bs-1-into_jo/4-config.sh

set -e  # quits on error

#=> for Bash
# should've  cd ~/onGH/OS-ArchBuilds/
source nodes/Bash/export-Arch
    # = $ABno/Bash/export-Arch, defines  $OSAB  and some dependents
    source $ABno-set/shell.sh
    source $ABno-set/jo-0-Bash-X.sh

#=> for broot
broot -- install
es ~/.config/broot/launcher/bash/br
#  I source  br  only in  $ABno/Bash/bashrc-generic
#  so, before next  git pull  in /home/jo/onGH/OS-ArchBuilds  will need to
#   cd nodes; rm jo/Bash/bash_profile m-HPEB840G3x/jo/bashrc
# subsequently configured in  $ABno-set/jo-0.sh

#=> for MIME database
mkdir -p ~/.local/share/mime/packages

#=> Ruby 4.x.x
rbenv install 4  # takes a while
read -p "- good to  rbenv global 4.0.7 ?"
rbenv global 4.0.7

#=> vimswap
[ -d ~/.vimswap ] || mkdir ~/.vimswap

