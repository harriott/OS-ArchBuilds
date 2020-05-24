#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>

#=> for jo's softwares

ln -sf $ARCHBUILDS/jo/gpg-agent.conf                   ~/.gnupg/gpg-agent.conf
ln -sf $GNULE/notmuch-config                           ~/.notmuch-config
ln -sf $ITstack/onGitHub/md4pdf/defaults.yaml          ~/.pandoc/defaults/md4pdf.yaml
ln -sf $ITstack/onGitHub/md4pdf/GNULinux/defaults.yaml ~/.pandoc/defaults/md4pdfGNULinux.yaml
ln -sf $ITstack/onGitHub/md4pdf/defaults-toc.yaml      ~/.pandoc/defaults/md4pdfToC.yaml
ln -sf $MACHINE/jo/SSHconfig                           ~/.ssh/config

rm -r ~/.pandoc/templates; ln -s $ITstack/onGitHub/pandoc-templates ~/.pandoc/templates
rm -r ~/.password-store; ln -s $GNULE/$machineName-password-store   ~/.password-store
rm -r ~/texmf/tex/latex/jo; ln -s $ITstack/forLaTeX                 ~/texmf/tex/latex/jo

