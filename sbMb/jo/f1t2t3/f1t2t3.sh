#!/bin/bash

# Joseph Harriott, Mon 23 Aug 2021

# indications of CPU temperature for my Gigabyte GA-970A-DS3P rev.2.1
# in script form so that it can be used in  $MACHINE/jo/f1t2t3/log.sh  called by fcron

sensors | awk '
  BEGIN { ORS=" " }
  /fan1/ {print "fan1", $2 "rpm"}
  /temp2/ {print " temp2", $2}
  /temp3/ {print " temp3", $2}
  '
  echo ""

