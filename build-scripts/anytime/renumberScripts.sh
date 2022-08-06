#!/bin/bash
# vim: fdl=1:

# #=> decrement numbering of my build scripts

# for n in {15..31}-*; do mv $n $((${n:0:2}-1))${n:2} ; done

#=> increment numbering of my build scripts

for n in {18..11}-*; do mv $n $((${n:0:2}+1))${n:2} ; done

