#!/bin/bash
# vim: fdl=1 sw=2:

# bash $bSc/anytime/symlinks-jo-0.sh

set -e

#=> Emacs
ed=~/.emacs.d; [ -d $ed ] && sudo rm -r $ed; ln -sf $emacs/emacsd $ed
ln -sf $emacs/spacemacs     ~/.spacemacs
ln -sf $emacs/spacemacs.env ~/.spacemacs.env
# e -dla ~/.*emacs*

#=> LanguageTool
# needed for command-line usage
sudo ln -sf $cITh/CP/LanguageTool /usr/share/java/LanguageTool
# e -la /usr/share/java

#=> mdfpdf Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

#=> Pandoc templates
pt=~/.pandoc/templates; [ -d $pt ] && rm -r $pt; ln -sf $onGH/pandoc-templates $pt

#=> SSH config
ln -sf $CrPl/SSHconfig/$host ~/.ssh/config

