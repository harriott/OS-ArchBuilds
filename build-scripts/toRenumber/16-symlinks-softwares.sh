#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>

# sort these lists by last use of "~":  :sort /,*\~/

# #=> email config
# ln -sf $GNULE/notmuch-config                     ~/.notmuch-config
# ln -sf $ITstack/CrossPlatform/email-Thunderbird/Cafézoïde.csv  ~/.thunderbird/Cafézoïde.csv

# #=> LaTeX
# rm -r ~/texmf/tex/latex/jo
# ln -s $ITstack/CrossPlatform/forLaTeX ~/texmf/tex/latex/jo

# #=> for my m4p scripts
# mkdir ~/texmf/tex/latex/m4p  # referred to in $ARCHBUILDS/jo/Bash/bashrc-ob

#=> Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

# #=> Pandoc templates
# rm -r ~/.pandoc/templates
# ln -s $onGH/pandoc-templates ~/.pandoc/templates

# #=> SSH config
# ln -sf $MACHINE/jo/SSHconfig                     ~/.ssh/config

# #=> Vim
# sudo rm -r ~/.vim
# ln -s $ITstack/vimfiles ~/.vim

