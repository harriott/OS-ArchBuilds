#!/bin/bash
# vim: fdl=1:

#=> 1 go slow
set -v  # prints each statement here, including comments
trap read debug  # puts a read request after each executable line

# #=> 2 broot br
# broot  # to load  br

# #=> 2 for *mutt
# mkdir ~/.local/share/mail

# #=> 2 for my m4p scripts
# mkdir -p ~/texmf/tex/latex/m4p  # needed eventually for Pandoc in $Bash/bashrc-ob

# #=> 2 grab default xinitrc
# cp /etc/X11/xinit/xinitrc ~/xinitrc-laa

#=> 2 LanguageTool
# needed for command-line usage
sudo ln -sf $cITh/CP/LanguageTool /usr/share/java/LanguageTool
# e -la /usr/share/java

# #=> 2 make AUR directories
# mkdir ~/Arch/AUR ~/Arch/AURdev-clone ~/Arch/AURdev-make

# #=> 2 base-devel group for makepkg
# sudo pacman -S --needed base-devel

