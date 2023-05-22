#!/bin/bash

# bash $bSc/repeatable/remakeAURdevs.sh

#  gctm  is defined in  $Bash/bashrc-console
#  sudo aura -Aakux --devel  is good for identifying locally installed developer repositories

PQ(){ pacman -Qs $1; }

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
    if [ $host = "M587637" ]; then
        xdg-open $1 >/dev/null 2>&1  # because chromium error reports
    else
        xdg-open $1
    fi
}

bat-extras-git/
cheat/
cht.sh-git/
clifm/
clifm-git/
code-minimap/
cpu-x/
fontpreview-git/
mawk/
pscircle-git/
snixembed-git/
tmux-bash-completion-git/
tmux-fastcopy

#=> auracle-git
PQ auracle-git
xdgo https://github.com/falconindy/auracle/commits/master
updateMaybe auracle-git falconindy

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

#=> pinta-git
PQ pinta-git
xdgo https://github.com/PintaProject/Pinta/commits/master
updateMaybe pinta-git 'https:\/\/github.com\/PintaProject\/Pinta.git'

#=> snixembed-git
PQ snixembed-git
xdgo https://git.sr.ht/~steef/snixembed
updateMaybe snixembed-git 'https:\/\/git.sr.ht\/~steef\/snixembed'

#=> tmux-bash-completion-git
PQ tmux-bash-completion-git
xdgo https://github.com/imomaliev/tmux-bash-completion/commits/master
updateMaybe tmux-bash-completion-git

#=> yj-git
PQ yj-git
xdgo https://github.com/sclevine/yj/commits/main
updateMaybe yj-git 'https:\/\/github.com\/sclevine\/yj.git'

