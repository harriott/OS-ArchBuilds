#!/bin/bash
# vim: sw=1:

# bash $OSAB/bs-3-toWM-0/4-softwares-for_nnn.sh

# gAUR  rAUR  are defined in $AjB/bashrc-console

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 0 Pádraig Brady's key for coreutils
# # for advcp
# gpg -k
# gpg --keyserver keys.gnupg.net --recv-keys DF6FD971306037D9
# true

# #=> 1 advcpmv
# # for nnn -r
# gAUR advcpmv
# nvim -c "silent! /jarun\/advcpmv" PKGBUILD
# makepkg -sic  # the checks are long...
# true

# #=> 2 go fast
# trap - debug  # turn off debug

#=> 3 nnn plugins
pcmanfm ~/.config/nnn/plugins &
shopt -s dotglob; [[ -d ~/.config/nnn/plugins ]] && rm -r ~/.config/nnn/plugins/*
sh -c "$(curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs)"
echo $(date "+%Y%m%d") > ~/.config/nnn/plugins/updated

