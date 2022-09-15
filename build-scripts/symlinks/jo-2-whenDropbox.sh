#!/bin/bash
# vim: fdl=1 sw=2:

# bash $bSc/symlinks/jo-2-whenDropbox.sh

set -e

# #=> Emacs safely 1 install
# ln -sf $ABjo/Emacs/ES/locks.sh ~/Arch/Elocks.sh
# sudo ln -sf $ABjo/Emacs/ES/emacs_safely.sh /usr/local/bin/emacs_safely
# # pb /usr/local/bin/emacs_safely
# sudo ln -sf $ABjo/Emacs/ES/emacs_safely.desktop /usr/share/applications/emacs_safely.desktop
# # pb /usr/share/applications/emacs_safely.desktop

# #=> Emacs safely 2 remove
# rm ~/Arch/Elocks.sh
# sudo rm /usr/local/bin/emacs_safely
# sudo rm /usr/share/applications/emacs_safely.desktop

# #=> LanguageTool
# # needed for command-line usage
# sudo ln -sf $cITh/CP/LanguageTool /usr/share/java/LanguageTool
# # e -la /usr/share/java

# #=> mdfpdf Pandoc defaults
# ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
# ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

# #=> Pandoc templates
# pt=~/.pandoc/templates; [ -d $pt ] && rm -r $pt; ln -sf $onGH/pandoc-templates $pt

# #=> SSH config
# ln -sf $CrPl/SSHconfig/$host ~/.ssh/config

#=> Spacemacs
sudo ln -sf $ABjo/Emacs/spacemacs.desktop /usr/share/applications/spacemacs.desktop
# e -la /usr/share/applications/spacemacs.desktop
sudo ln -sf $ABjo/Emacs/spacemacs.sh /usr/local/bin/spacemacs
# pb /usr/local/bin/spacemacs

