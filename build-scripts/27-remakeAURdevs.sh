#!/bin/bash

# bash <thisfile>.sh

PQ(){ pacman -Qs $1; }

updateMaybe()
{
    read -p "    - so is an update of $1 needed? " cnfrm
    if [ $cnfrm ] && [ $cnfrm = "y" ]; then
        gctm $1
        gvim PKGBUILD
        read -p "    - is the PKGBUILD good? "
        makepkg -sic
    fi
}
xdgo()
{
    if [ $machine = "M587637" ]; then
        xdg-open $1 >/dev/null 2>&1  # because chromium error reports
    else
        xdg-open $1
    fi
}

#=> auracle-git
PQ auracle-git
xdgo https://github.com/falconindy/auracle/commits/master
updateMaybe auracle-git

#=> bat-extras-git
PQ bat-extras-git
xdgo https://github.com/eth-p/bat-extras/commits/master
updateMaybe bat-extras-git

#=> cht.sh-git
PQ cht.sh-git
xdgo https://github.com/chubin/cheat.sh/commits/master
updateMaybe cht.sh-git

#=> fontpreview-git
PQ fontpreview-git
xdgo https://github.com/sdushantha/fontpreview/commits/master
updateMaybe fontpreview-git

#=> moar-git
PQ moar-git
xdgo https://github.com/walles/moar/commits/master
updateMaybe moar-git

#=> pscircle-git
PQ pscircle-git
xdgo https://gitlab.com/mildlyparallel/pscircle/-/commits/master/
updateMaybe pscircle-git

