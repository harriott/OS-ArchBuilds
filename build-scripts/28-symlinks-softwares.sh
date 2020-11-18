#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

# sort these lists by last use of "~":  :sort /,*\~/

#=> email config
ln -sf $GNULE/notmuch-config ~/.notmuch-config

#=> LaTeX
ln -s $ITstack/CrossPlatform/forLaTeX ~/texmf/tex/latex/jo

#=> Pandoc defaults
ln -sf $MD4PDF/defaults.yaml     ~/.pandoc/defaults/md4pdf.yaml
ln -sf $MD4PDF/defaults-toc.yaml ~/.pandoc/defaults/md4pdfToC.yaml

#=> Pandoc templates
ln -s $onGH/pandoc-templates ~/.pandoc/templates

#=> SSH config
ln -sf $MACHINE/jo/SSHconfig ~/.ssh/config

#=> softares in my Openbox build

ln -sf $Openbox/cmus-rc.conf   ~/.config/cmus/rc
ln -sf $Openbox/dunstrc        ~/.config/dunst/dunstrc  # requires restarting X
ln -sf $Openbox/zathurarc      ~/.config/zathura/zathurarc
ln -sf $Openbox/cmus_notify.sh ~/.local/share/cmus_notify.sh
ln -sf $tmux/tmux.conf         ~/.tmux.conf

rm -r ~/.urxvt/ext; ln -s $Openbox/urxvt/Perls ~/.urxvt/ext

