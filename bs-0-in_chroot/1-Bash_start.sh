#!/bin/bash
# vim: se fdl=1 sw=2:

# bash $OSAB/bs-0-to_root/1-Bash.sh
# until  $myDrA == 1

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 0 get $OSAB
export host=$(uname -n) # $host
export onGH=/mnt/onGH
  export OSAB=$onGH/OS-ArchBuilds
  export OSL=$onGH/OS-Linux

#=> 1 configure Bash
cp $OSAB/bs-0-to_root/1-Bash.sh ~/.start
cp $OSAB/nodes-Bash/export-Arch ~/.export-Arch
cp $OSAB/nodes-root/bash_profile /root/.bash_profile
cp $OSAB/nodes-root/bashrc /root/.bashrc
cp $OSAB/nodes-root/bash_history.sh ~/bash_history.sh
cp $OSL/nodes/GNUReadline-inputrc ~/.inputrc
cp $OSL/nodes/jo/export ~/.export-linux

