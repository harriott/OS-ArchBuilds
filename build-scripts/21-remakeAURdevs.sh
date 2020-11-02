#!/bin/bash
# vim: fdm=expr ft=sh.shfold:

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

#=> vim-calendar-git
# pqs vim-calendar-git
#  - check against upstream commits: https://gitlab.com/mildlyparallel/pscircle/-/commits/master/
gctm vim-calendar-git
gvim PKGBUILD
makepkg -sic

# #=> vim-colors-solarized-git
# # pqs vim-colors-solarized-git
# #  - check against upstream commits: https://github.com/altercation/vim-colors-solarized/commits/master

# #=> vim-gruvbox-git
# # pqs vim-gruvbox-git
# #  - check against upstream commits: https://github.com/morhetz/gruvbox/commits/master

#=> vim-recover-git
# pqs vim-recover-git
#  - check against upstream commits: https://github.com/chrisbra/Recover.vim/commits/master
gctm vim-recover-git
gvim PKGBUILD
makepkg -sic

