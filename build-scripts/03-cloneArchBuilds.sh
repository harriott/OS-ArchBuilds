#!/bin/bash
# vim: fdl=1:

#=> 0 grab latest ArchBuilds
cd /
[ -d ArchBuilds ] && rm -r ArchBuilds  # because my config specifies ssh
git clone https://github.com/harriott/ArchBuilds.git
ls /ArchBuilds

