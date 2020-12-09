#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh

PQ(){ pacman -Qs $1; }

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> auracle-git
# PQ auracle-git
# # - check against upstream commits: https://github.com/falconindy/auracle/commits/master
# gctm auracle-git
# gvim PKGBUILD
# makepkg -sic

# #=> bat-extras-git
# PQ bat-extras-git
# #  - check against upstream commits: https://github.com/eth-p/bat-extras/commits/master
# gctm bat-extras-git
# gvim PKGBUILD
# makepkg -sic

# #=> cht.sh-git
# PQ cht.sh-git
# #  - check against upstream commits: https://github.com/chubin/cheat.sh/commits/master
# gctm cht.sh-git
# gvim PKGBUILD
# makepkg -sic

# #=> fontpreview-git
# PQ fontpreview-git
# #  - check against upstream commits: https://github.com/sdushantha/fontpreview/commits/master

# #=> moar-git
# PQ moar-git
# # #  - check against upstream commits: https://github.com/walles/moar/commits/master
# gctm moar-git
# gvim PKGBUILD
# makepkg -sic
# true

# #=> pscircle-git
# PQ pscircle-git
# #  - check against upstream commits: https://gitlab.com/mildlyparallel/pscircle/-/commits/master/
# gctm pscircle-git
# gvim PKGBUILD
# makepkg -sic

# #=> qimgv-git
# PQ qimgv-git
# #  - check against upstream commits: https://github.com/easymodo/qimgv/commits/master

