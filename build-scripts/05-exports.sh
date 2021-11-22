#!/bin/bash
# vim: fdl=1 sw=2:

# to be sourced by another build script

#=> 0 ARCHBUILDS
# 1 in root
ARCHBUILDS=/ArchBuilds
# 2 in jo
AB=/home/jo/ArchBuilds
[[ -d $AB ]] && ARCHBUILDS=$AB
# 3 in Dropbox
Storage=/mnt/BX200
# Storage=/mnt/SD480GSSDPlus
# Storage=/mnt/SDEP128G
  AB=/mnt/$Storage/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds
[[ -d $AB ]] && ARCHBUILDS=$AB

#=> 1 and more
Bash=$ARCHBUILDS/jo/Bash
MACHINE=$ARCHBUILDS/$(uname -n)

#=> 2 test
    echo '$MACHINE' "= $MACHINE"

