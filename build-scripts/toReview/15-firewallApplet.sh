#!/bin/bash

#=> 2 Firewalld - firewall-applet
firewallApplet
ln -sf $ARCHBUILDS/jo/firewalldApplet.conf ~/.config/firewall/applet.conf

# #=> 2 Firewalld - firewall-applet icons - fixed size
# hc=/usr/share/icons/hicolor
# good=/usr/share/icons/Adwaita
# good=/usr/share/icons/default
# for size in 16x16 24x24 32x32 48x48; do
#     echo $size
#     [ -d $good/$size/apps ] || mkdir -p $good/$size/apps
#     for icon in firewall-applet-error.png firewall-applet-panic.png firewall-applet.png firewall-config.png; do
#         ln -sf $hc/$size/apps/$icon $good/$size/apps/$icon
#     done
#     ls $good/$size/apps
# done

#=> 2 Firewalld - firewall-applet icons - scalable
hc=/usr/share/icons/hicolor/scalable/apps
good=/usr/share/icons/Adwaita/scalable/apps
# good=/usr/share/icons/default/scalable/apps
echo $good
for icon in firewall-applet-error.svg firewall-applet-panic.svg firewall-applet.svg firewall-config.svg; do
    ln -sf $hc/$icon $good/$icon
done
ls $good

