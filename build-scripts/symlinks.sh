#!/bin/bash
# vim: fdm=expr fdl=1 ft=sh.shfold:

# bash <thisfile>.sh

# in ~:
#  fd --max-depth 3 -H -t l  # show broken symlinks
#  fd --max-depth 3 -Hl -t l | xcol <keywords>  # spot snags

#=> 0 $MACHINE
ARCHBUILDS=~/ArchBuilds
ARCHBUILDS=/mnt/SDSSDA240G/Dropbox/JH/core/IT_stack/onGitHub/ArchBuilds
    MACHINE=$ARCHBUILDS/AVT661
    # MACHINE=$ARCHBUILDS/sbMb
    Openbox=$ARCHBUILDS/jo/Openbox
    tmux=$ARCHBUILDS/jo/tmux

#=> 1 symlinks
ln -sf $ARCHBUILDS/jo/bash_history.sh ~/Arch/bash_history.sh
ln -sf $MACHINE/jo/gitconfig ~/.gitconfig # points to $ITstack/gitconfig
ln -sf $ARCHBUILDS/jo/gpg-agent.conf  ~/.gnupg/gpg-agent.conf

# sort these lists by last use of "~":  :sort /,*\~/

# #==> Openbox itself

# ln -sf $MACHINE/jo/openbox/schema.pl  ~/.config/obmenu-generator/schema.pl
# ln -sf $MACHINE/jo/openbox/autostart  ~/.config/openbox/autostart
# ln -sf $Openbox/openbox/menu.xml      ~/.config/openbox/menu.xml
# ln -sf $Openbox/openbox/rc.xml        ~/.config/openbox/rc.xml

# #==> softares in my Openbox build

# ln -sf $Openbox/cmus-rc.conf   ~/.config/cmus/rc
# ln -sf $Openbox/dunstrc        ~/.config/dunst/dunstrc
# ln -sf $Openbox/zathurarc      ~/.config/zathura/zathurarc
# ln -sf $Openbox/cmus_notify.sh ~/.local/share/cmus_notify.sh
# ln -sf $tmux/tmux.conf         ~/.tmux.conf

# rm -r ~/.urxvt/ext; ln -s $Openbox/urxvt/Perls ~/.urxvt/ext

#==> vims
ln -sf $ARCHBUILDS/jo/Vim/gvimrc ~/.gvimrc
ln -sf $ARCHBUILDS/jo/Vim/vimrc  ~/.vimrc

ln -sf $ARCHBUILDS/jo/Vim/init.vim ~/.config/nvim/init.vim

# #==> xinitrc
# ln -sf $MACHINE/jo/xinitrc ~/.xinitrc # which calls $MACHINE/jo/Xresources

