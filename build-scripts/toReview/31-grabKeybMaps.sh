#!/bin/bash
# vim: fdl=1:

# bash 34-grabKeybMaps.sh

#=> grab keyboard maps
if [ -w /mm ]; then
    mkdir /mm/xkbprint
    for i in {1..3}; do
        xkbprint -ll $i :0.0 -o - | ps2pdf - > /mm/xkbprint/shift_level_$i.pdf
    done
fi

