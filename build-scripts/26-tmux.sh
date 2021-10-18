#!/bin/bash
# vim: fdl=1:

set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# gctm  is defined in $ARCHBUILDS/jo/Bash/bashrc-console

#=> tmux configuration
ln -sf $tmux/tmux.conf ~/.tmux.conf

#=> tmux-bash-completion-git
# depends on bash-completion, and brings in tmux
cd ~/Arch/AURdev-clone
git clone https://aur.archlinux.org/tmux-bash-completion-git.git
cd tmux-bash-completion-git
gctm tmux-bash-completion-git
nvim -c "silent! /imomaliev" PKGBUILD
makepkg -sic

