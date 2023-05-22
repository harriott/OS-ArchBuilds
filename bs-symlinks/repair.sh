#!/bin/bash
# vim: sw=2:

# $OSAB/bs-symlinks/repair.sh
# for occasions when I've renamed directories, breaking symlinks

# bash repair.sh

set -e

#=> 0 machine specific environment
source "../mb-$host/export-machine"

#=> 1 $OSAB (& $Bash), $machBld
source ../Bash/export-storage  # essential

#=> 1 functioning root
[[ -z $loaded_bg ]] && source $OSAB/Bash/bashrc-generic
sudo bash $OSAB/bs-symlinks/root.sh

#=> 2 functioning console
[[ -z $loaded_bc ]] && source $Bash/bashrc-console

#=> 2 helpful environment
source $Bash/export-jo

#=> 2 reset symlinks
source $OSAB/bs-symlinks/jo-0.sh

#=> 3 awesome
[[ -z $(pstree | grep awesome-) ]] || source $OSAB/bs-symlinks/jo-1-awesome.sh

#=> 3 Openbox
[[ -z $(pstree | grep openbox-) ]] || source $OSAB/bs-symlinks/jo-1-Openbox.sh

