#!/bin/bash
# vim: fdl=1 sw=2:

# bash $ARCHBUILDS/build-scripts/05-exports.sh

#=> 0 ARCHBUILDS
# 1 in root
export ARCHBUILDS=/ArchBuilds
# 2 in jo
AB=/home/jo/ArchBuilds
[[ -d $AB ]] && export ARCHBUILDS=$AB
# 3 in Dropbox
Storage=/mnt/BX200  # i34G1TU02
# Storage=/mnt/SD480GSSDPlus  # sbMb
# Storage=/mnt/SDEP128G
  AB=$Storage/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds
[[ -d $AB ]] && export ARCHBUILDS=$AB

#=> 1 and more
export Bash=$ARCHBUILDS/jo/Bash
export host=$(uname -n)
  export MACHINE=$ARCHBUILDS/$host
export Openbox=$ARCHBUILDS/jo/Openbox

#=> 2 test
echo '$MACHINE' "= $MACHINE"
read -p "- looks good?"

