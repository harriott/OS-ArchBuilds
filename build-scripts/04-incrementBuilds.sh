#!/bin/bash
# vim: fdl=1:

#=> increment numbering of my build scripts

for n in {30..16}-*; do mv $n $((${n:0:2}+1))${n:2} ; done
# for n in 09-*; do mv $n 10${n:2} ; done
# for n in {08..05}-*; do mv $n 0$((${n:1:1}+1))${n:2} ; done

