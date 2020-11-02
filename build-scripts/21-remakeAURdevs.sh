#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> auracle-git
# gctm auracle-git
# gvim PKGBUILD
# makepkg -sic

#=> bat-extras-git
gctm bat-extras-git
gvim PKGBUILD
makepkg -sic

