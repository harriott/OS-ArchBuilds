#!/bin/bash
# vim: fdl=1 sw=2:

#=> grab latest ArchBuilds
if [[ $(id -u) > 0 ]]; then
  cd ~  # when  jo
else
  cd /  # as root
fi
# because my config specifies ssh
  [ -d ArchBuildsOld ] && sudo rm -r ArchBuildsOld
  [ -d ArchBuilds ] && mv ArchBuilds ArchBuildsOld
git clone https://github.com/harriott/ArchBuilds.git
ls ArchBuilds

