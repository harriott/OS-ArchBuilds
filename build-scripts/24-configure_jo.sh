#!/bin/bash
# vim: fdl=1:

#=> broot br
broot  # to load  br

#=> for *mutt
mkdir ~/.local/share/mail

#=> for my m4p scripts
mkdir ~/texmf/tex/latex/m4p  # needed eventually for Pandoc in $Bash/bashrc-ob

#=> grab default xinitrc
cp /etc/X11/xinit/xinitrc ~/xinitrc-la5

#=> LaTeX
mkdir -p ~/texmf/tex/latex

#=> 0 make AUR directory
mkdir -p ~/Arch/AUR

