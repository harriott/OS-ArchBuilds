#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# #=> broot br
# broot  # to load  br

#=> CopyQ - ready for Pasting
CopyQ > F6 > Load > $ARCHBUILDS/jo/CopyQ-readyforPasting.ini

#=> for *mutt
mkdir ~/.local/share/mail

#=> for my m4p scripts
mkdir ~/texmf/tex/latex/m4p  # needed for Pandoc in $Bash/bashrc-ob

# #=> grab default xinitrc
# # need a removable drive mounted to /mm
# cp /etc/X11/xinit/xinitrc /mm/k8g-xinitrc
# echo "build your xinitrc"

#=> LaTeX
mkdir -p ~/texmf/tex/latex

# #=> neovim configuration directory
# mkdir ~/.config/nvim

