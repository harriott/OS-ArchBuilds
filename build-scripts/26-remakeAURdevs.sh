#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> auracle-git
# gctm auracle-git
# gvim PKGBUILD
# makepkg -sic

# #=> bat-extras-git
# gctm bat-extras-git
# gvim PKGBUILD
# makepkg -sic

#=> cht.sh-git
# pqs cht.sh-git
#  - check against upstream commits: https://github.com/chubin/cheat.sh/commits/master
gctm cht.sh-git
gvim PKGBUILD
makepkg -sic

# #=> fontpreview-git
# # pqs fontpreview-git
# #  - check against upstream commits: https://github.com/sdushantha/fontpreview/commits/master

# #=> pscircle-git
# # pqs pscircle-git
# #  - check against upstream commits: https://gitlab.com/mildlyparallel/pscircle/-/commits/master/
# gctm pscircle-git
# gvim PKGBUILD
# makepkg -sic

# #=> qimgv-git
# # pqs qimgv-git
# #  - check against upstream commits: https://github.com/easymodo/qimgv/commits/master

