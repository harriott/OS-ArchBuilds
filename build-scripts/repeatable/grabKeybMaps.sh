#!/bin/bash
# vim: fdl=1:

#=> grab keyboard maps
mkdir ~/xkbprint
for i in {1..3}; do
    xkbprint -ll $i :0.0 -o - | ps2pdf - > ~/xkbprint/shift_level_$i.pdf
done

