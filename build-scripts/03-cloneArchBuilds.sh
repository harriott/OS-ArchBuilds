#!/bin/bash
# vim: fdl=1 sw=2:

#=> grab latest ArchBuilds
cd /  # as root
# cd /; bash ArchBuilds/build-scripts/03-cloneArchBuilds.sh; cd ArchBuilds/build-scripts
cd ~  # when  jo
# because my config specifies ssh
  [ -d ArchBuildsOld ] && rm -r ArchBuildsOld
  [ -d ArchBuilds ] && mv ArchBuilds ArchBuildsOld
git clone https://github.com/harriott/ArchBuilds.git
ls ArchBuilds

