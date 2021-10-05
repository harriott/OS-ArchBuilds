#!/bin/bash
# vim: fdl=1:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> grab keyboard maps
if [ -w /mm ]; then
    mkdir /mm/xkbprint
    for i in {1..3}; do
        xkbprint -ll $i :0.0 -o - | ps2pdf - > /mm/xkbprint/shift_level_$i.pdf
    done
fi

