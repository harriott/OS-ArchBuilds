#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <this_script>

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> configure gVim
cd ~
git clone git@github.com:harriott/vimfiles.git
mv vimfiles .vim
# don't forget to go to  .vim/pack/ArchLinux  and run your  clones.sh
true

#=> grab keyboard maps
if [ -w /mm ]; then
    mkdir /mm/xkbprint
    for i in {1..3}; do
        xkbprint -ll $i :0.0 -o - | ps2pdf - > /mm/xkbprint/shift_level_$i.pdf
    done
fi

# #=> time correction
# xdg-open http://time.is/ # to see how much stray
# sudo ntpd -qg
# sudo hwclock --systohc

