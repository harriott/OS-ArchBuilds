#!/bin/bash

# Joseph Harriott, Wed 14 Jun 2017
# convert images to jpg with ImageMagick

# this is normally called from one of my aliases defined in  $Bash/bashrc-wm,
# but can: find * -exec bash /usr/local/bin/cnvt.sh {} \;

inimag=${1%.*}
intype=${1##*.}
if convert $1 $2 $3 $inimag.jpg; then
	if [ "$intype" != "jpg" ]; then gio trash $1; fi
fi
