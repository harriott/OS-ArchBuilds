#!/bin/sh
# vim: fdl=1 ft=sh sw=2:

# fix various changes to my exports that travel through my files

#=> bs
cd $core
rg ARCHBUILDS/build-scripts -l
for f in $(rg -l ARCHBUILDS/build-scripts); do sed -i 's/ARCHBUILDS\/build-scripts/bs/' $f; done

#=> cITh 0
cd $core
rg IThandy -l
for f in $(rg -l IThandy); do sed -i 's/IThandy/cITh/' $f; done

#=> cITh 1
cd $core
rg DROPBOX/JH/copied/IT-handy
for f in $(rg -l DROPBOX/JH/copied/IT-handy); do sed -i 's/DROPBOX\/JH\/copied\/IT-handy/cITh/' $f; done

#=> cIThul
cd $core
rg '\$ul/'
for f in $(rg -l '\$ul/'); do sed -i 's/\$ul\//\$cITh/' $f; done

