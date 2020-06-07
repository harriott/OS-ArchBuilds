#!/bin/bash

# Joseph Harriott, Wed 03 Jun 2020
# darken sketches with ImageMagick

# this is called from one of my aliases defined in  $ARCHBUILDS/jo/Bash/bashrc-images

if [[ -d $1 ]]; then
    [[ -d $1-gamma03 ]] && rm -r $1-gamma03
    mkdir $1-gamma03
    cd $1
    i=0
    for j in *.jpg; do convert $j -level 0%,100%,0.3 ../$1-gamma03/$j; done
    cd ..
fi

