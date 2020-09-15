#!/bin/bash
# vim: fdm=expr fdc=1 ft=sh.shbuild:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> configure gVim
cd ~
git clone git@github.com:harriott/vimfiles.git
mv vimfiles .vim
cd .vim
git remote rename origin gh
cd pack/ArchLinux/sbMb
bash clones.sh
cd ~

#=> grab keyboard maps
if [ -w /mm ]; then
    mkdir /mm/xkbprint
    for i in {1..3}; do
        xkbprint -ll $i :0.0 -o - | ps2pdf - > /mm/xkbprint/shift_level_$i.pdf
    done
fi

