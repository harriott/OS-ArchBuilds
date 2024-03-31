#!/bin/bash

# bash $OSAB/bs-repeatable/remakeAURdevs.sh

#  gctm  is defined in  $Bash/bashrc-console
#  sudo aura -Aakux --devel  is good for identifying locally installed developer repositories

PQ(){ echo; echo $1; pacman -Qs $1; }

updateMaybe()
{
    read -p "    - so is an update of $1 needed? " cnfrm
    if [ $cnfrm ] && [ $cnfrm = "y" ]; then
        gctm $1
        nvim -c "silent! /$2" PKGBUILD
        read -p "    <Enter> if the PKGBUILD is good "
        makepkg -sic
    fi
}
xdgo()
{
    if [ $host = "AsusW202" ]; then
        MESA_DEBUG=silent xdg-open $1
    else
        xdg-open $1
    fi
}

#=> auracle-git 0 remake
PQ auracle-git
xdgo https://github.com/inglor/auracle/commits/master
updateMaybe auracle-git inglor

#=> clifm-git
PQ clifm-git
xdgo https://github.com/leo-arch/clifm/commits/master
updateMaybe clifm-git 'https:\/\/github.com\/leo-arch\/clifm'

#=> fontpreview-git
PQ fontpreview-git
xdgo https://github.com/sdushantha/fontpreview/commits/master
updateMaybe fontpreview-git

#=> lsix-git
PQ lsix-git
xdgo https://github.com/hackerb9/lsix/commits/master
updateMaybe lsix-git 'https:\/\/github.com\/hackerb9\/lsix'

# #=> snixembed-git
# # not installed on  AsusW202  i34G1TU02
# PQ snixembed-git
# xdgo https://git.sr.ht/~steef/snixembed
# updateMaybe snixembed-git 'https:\/\/git.sr.ht\/\~steef\/snixembed'

#=> tmux-bash-completion-git
PQ tmux-bash-completion-git
xdgo https://github.com/imomaliev/tmux-bash-completion/commits/master
updateMaybe tmux-bash-completion-git

#=> yj-git
PQ yj-git
xdgo https://github.com/sclevine/yj/commits/main
updateMaybe yj-git 'https:\/\/github.com\/sclevine\/yj.git'
exit

