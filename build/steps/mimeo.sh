#!/bin/bash
# vim: set et tw=0:

# bash -x <thisfile>.sh

# obmenu-generator
cp ~/AcerVeritonT661/configFiles/autostart ~/.config/openbox
cp ~/AcerVeritonT661/configFiles/schema.pl ~/.config/obmenu-generator
cp ~/AcerVeritonT661/configFiles/openbox/rx.xml ~/.config/openbox
git clone https://aur.archlinux.org/mimeo.git
git clone https://aur.archlinux.org/openbox-themes.git
git clone https://aur.archlinux.org/xdg-utils-mimeo.git

