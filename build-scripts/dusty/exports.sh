#!/bin/bash
# vim: fdl=1 sw=2:

# bash $bSc/05-exports.sh

#=> 0 ARCHBUILDS
# 1 in root
export ARCHBUILDS=/ArchBuilds

# 2 in jo
AB=/home/jo/ArchBuilds
[[ -d $AB ]] && export ARCHBUILDS=$AB

# 3 in Dropbox
export host=$(uname -n)
if [ $host = "i34G1TU02" ]; then
  Storage=/mnt/BX200
elif [ $host = "LIP120s81A4" ]; then
  Storage=/mnt/SDEP128G
elif [ $host = "sbMb" ]; then
  Storage=/mnt/SDU3D1TB
fi
AB=$Storage/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds
[[ -d $AB ]] && export ARCHBUILDS=$AB

#=> 1 and more
export Bash=$ARCHBUILDS/jo/Bash
export host=$(uname -n)
  export machBld=$ARCHBUILDS/$host
export Openbox=$ARCHBUILDS/jo/Openbox

#=> 2 test
echo '$machBld' "= $machBld"
read -p "- looks good?"

