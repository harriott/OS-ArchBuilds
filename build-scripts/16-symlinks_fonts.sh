#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash <thisfile>

#=> for fonts

[[ -d /usr/share/fonts/FontSquirrel ]] && rm -r /usr/share/fonts/FontSquirrel; ln -sf $ITstack/copiedFontsForArch/FontSquirrel /usr/share/fonts/FontSquirrel
rm -r /usr/share/fonts/Win10
[[ -d /usr/share/fonts/Win10Home ]] && rm -r /usr/share/fonts/Win10Home; ln -sf $ITstack/copiedFontsForArch/Win10Home /usr/share/fonts/Win10Home
[[ -d /usr/share/fonts/Win10Pro ]] && rm -r /usr/share/fonts/Win10Pro; ln -sf $ITstack/copiedFontsForArch/Win10Pro /usr/share/fonts/Win10Pro

