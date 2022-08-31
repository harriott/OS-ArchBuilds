#!/bin/bash
# vim: sw=1:

# gAUR  rAUR  are defined in $Bash/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

#=> 1 advcpmv
# for nnn -r
gAUR advcpmv
nvim -c "silent! /jarun\/advcpmv" PKGBUILD
makepkg -sic  # the checks are long...
true

#=> 2 go fast
trap - debug  # turn off debug

#=> 3 nnn plugins
shopt -s dotglob
[[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh

