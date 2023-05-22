#!/bin/bash
# vim: fdl=1 sw=2:

#=> grab latest ArchBuilds
# useful before Dropbox
if [[ $(id -u) > 0 ]]; then
  cd ~  # when  jo
  s=sudo
else
  cd /  # as root
fi
# because my config specifies ssh
  [ -d ArchBuildsOld ] && $s rm -r ArchBuildsOld
  [ -d ArchBuilds ] && mv ArchBuilds ArchBuildsOld
git clone https://github.com/harriott/ArchBuilds.git
# git clone git@github.com:harriott/ArchBuilds.git  # only possible when booted from root
cd ArchBuilds/build-scripts

