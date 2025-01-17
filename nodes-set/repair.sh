#!/bin/bash
# vim: sw=2:

# $OSAB/nodes-set/repair.sh
# for occasions when I've renamed directories, breaking symlinks

# bash repair.sh

set -e

#=> 0 machine specific environment
source "../mb-$host/export-machine"

#=> 1 $OSAB (& $AjB), $machBld
source ../nodes-Bash/export-storage  # essential

#=> 1 functioning root
[[ -z $loaded_bg ]] && source $OSAB/nodes-Bash/bashrc-generic
sudo bash $OSAB/nodes-set/root.sh

#=> 2 functioning console
[[ -z $loaded_bc ]] && source $AjB/bashrc-console

#=> 2 helpful environment
source $AjB/export-jo

#=> 2 reset symlinks
source $OSAB/nodes-set/jo-0.sh

#=> 3 awesome
[[ -z $(pstree | grep awesome-) ]] || source $OSAB/nodes-set/jo-1-awesome.sh

#=> 3 Openbox
[[ -z $(pstree | grep openbox-) ]] || source $OSAB/nodes-set/jo-1-Openbox.sh

