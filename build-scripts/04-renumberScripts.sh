#!/bin/bash
# vim: fdl=1:

# #=> decrement numbering of my build scripts

# for n in {15..31}-*; do mv $n $((${n:0:2}-1))${n:2} ; done

#=> increment numbering of my build scripts

for n in {36..27}-*; do mv $n $((${n:0:2}+1))${n:2} ; done
# for n in 09-*; do mv $n 10${n:2} ; done
# for n in {08..05}-*; do mv $n 0$((${n:1:1}+1))${n:2} ; done

