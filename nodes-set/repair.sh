#!/bin/bash
# vim: sw=2:

# cd $OSAB/nodes/set; source repair.sh
# for occasions when I've renamed directories, breaking symlinks

# bash repair.sh

#=> 0 machine specific environment
source "../mb-$host/export-machine"

#=> 1 $OSAB (& $AjB), $machBld
source ../nodes-Bash/export-storage  # essential

#=> 1 Bash generic
[[ $(alias fin) =~ 'figlet' ]] && source $OSAB/nodes/Bash/bashrc-generic

#=> 2 Bash also for console
[[ $(type ra) =~ 'function' ]] && source $AjB/bashrc-console

#=> 2 helpful environment
source $OSL/nodes/jo/export

#=> 2 fix nodes
source $OSAB/nodes-set/jo-0.sh

#=> 3 awesome
[[ -z $(pstree | grep awesome-) ]] || source $OSAB/nodes-set/jo-1-awesome.sh

#=> 3 Openbox
[[ -z $(pstree | grep openbox-) ]] || source $OSAB/nodes-set/jo-1-Openbox.sh

#=> 4 more nodes, including Vims
source $OSAB/nodes-set/jo-2-whenWM-0.sh

#=> 5 more nodes
source $OSAB/nodes-set/jo-2-whenWM-1.sh

#=> 6 root stuff
echo 'now su > root pw for  source $OSAB/nodes-set/root.sh'

