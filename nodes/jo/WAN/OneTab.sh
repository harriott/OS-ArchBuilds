#!/bin/bash
# vim: fdl=1:

# Joseph Harriott, jeu 27 août 2026

# $ABjo/WAN/OneTab.sh ($OSAB/nodes-set/jo-0.sh)
# fcrontab:  @daily bash ~/Arch/OneTab/OneTab.sh

#=> Firefox
# no obvious single data node, manually save as HTML occasionally

#=> Google Chrome 0 define some long placenames
gc="$HOME/.config/google-chrome"; D=Default/IndexedDB/chrome-extension_chphlpgkkbolifaimnlloiipkdnihall_0.indexeddb.leveldb/

#=> Google Chrome 1 backup my OneTab's
rsync -irtv --delete $gc/$D      ~/Arch/OneTab/gc-leveldb
rsync -irtv --delete $gc-beta/$D ~/Arch/OneTab/gcb-leveldb

