#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>

# sort these lists by last use of "~":  :sort /,*\~/

#=> for jo's softwares

ln -sf $ARCHBUILDS/jo/gpg-agent.conf             ~/.gnupg/gpg-agent.conf
ln -sf $GNULE/notmuch-config                     ~/.notmuch-config
ln -sf $MD4PDF/GNULinux/defaults-iih-AVT661.yaml ~/.pandoc/defaults/md4pdf-iih.yaml
ln -sf $MD4PDF/defaults.yaml                     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml                 ~/.pandoc/defaults/md4pdfToC.yaml
ln -sf $MACHINE/jo/SSHconfig                     ~/.ssh/config

rm -r ~/.pandoc/templates
ln -s $ITstack/onGitHub/pandoc-templates ~/.pandoc/templates

rm -r ~/texmf/tex/latex/jo
ln -s $ITstack/forLaTeX ~/texmf/tex/latex/jo

