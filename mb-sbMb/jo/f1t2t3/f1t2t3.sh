#!/bin/bash

# Joseph Harriott, Mon 23 Aug 2021

# bash $machBld/jo/f1t2t3/f1t2t3.sh
#  aliased in  $OSAB/nodes/Bash/bashrc-generic
#  symlinked in  $OSAB/nodes-set/jo-0.sh
#   ll ~/Arch/f1t2t3/f1t2t3.sh

# indications of CPU temperature for my Gigabyte GA-970A-DS3P rev.2.1
# in script form so that it can be used in  $machBld/jo/f1t2t3/log.sh  called by  fcron

sensors | awk '
  BEGIN { ORS=" " }
  /fan1/ {print "fan1", $2 "rpm"}
  /temp2/ {print " temp2", $2}
  /temp3/ {print " temp3", $2}
  '
  echo ""

