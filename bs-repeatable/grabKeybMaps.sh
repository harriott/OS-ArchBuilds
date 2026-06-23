#!/bin/bash
# vim: fdl=1:

# bash $OSAB/bs-repeatable/grabKeybMaps.sh

#=> 0 grab keyboard maps
mkdir ~/xkbprint
for i in {1..3}; do
    xkbprint -ll $i :0.0 -o - | ps2pdf - > ~/xkbprint/shift_level_$i.pdf
done

#=> 1 saved results
# $ITmULlA/myBuilds-AVT661-xkbprint/
# $ITmULlA/myBuilds-sbMb/xkbprint/

