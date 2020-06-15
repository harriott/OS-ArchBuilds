#!/bin/bash
# vim: fdm=expr fdl=1 ft=shbuild:

# bash <thisfile>

# sort these lists by last use of "~":  :sort /,*\~/

#=> for jo's softwares

ln -sf $ARCHBUILDS/jo/gpg-agent.conf             ~/.gnupg/gpg-agent.conf
ln -sf $MACHINE/jo/SSHconfig                     ~/.ssh/config

ln -sf $GNULE/notmuch-config                     ~/.notmuch-config
ln -sf $ITstack/email-Thunderbird/Cafézoïde.csv  ~/.thunderbird/Cafézoïde.csv

ln -sf $MD4PDF/defaults.yaml                     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml                 ~/.pandoc/defaults/md4pdfToC.yaml

rm -r ~/.pandoc/templates
ln -s $ITstack/onGitHub/pandoc-templates ~/.pandoc/templates

#=> for jo's softwares - latex

rm -r ~/texmf/tex/latex/jo
ln -s $ITstack/forLaTeX ~/texmf/tex/latex/jo

mkdir ~/texmf/tex/latex/m4p

