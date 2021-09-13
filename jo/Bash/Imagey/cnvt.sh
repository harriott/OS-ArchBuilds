#!/bin/bash

# Joseph Harriott, Thu 02 Sep 2021
# convert images to jpg with ImageMagick

# this is normally called from one of my aliases defined in  $Bash/bashrc-wm,
# but can: find * -exec bash /usr/local/bin/cnvt.sh {} \;

inimag=${1%.*}
intype=${1##*.}
if gm convert $1 $2 $3 $inimag.jpg; then
	if [ "$intype" != "jpg" ]; then gio trash $1; fi
fi  # not sure why I'm using GraphicsMagick

