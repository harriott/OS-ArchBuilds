#!/bin/bash
# vim: set sw=2:

# Tue 07 Dec 2021

# search for a setting in the system file-hierarchy

# bash $OSAB/root/grepFileHierarchy.sh

grepsfile=grepFileHierarchy
greps=/home/jo/$grepsfile.txt
grepterm=firewall-applet

echo 'vim: nowrap tw=0:' > $greps

announce () { echo $sfhdir; echo >> $greps; echo $sfhdir >> $greps; }

sfhdir=/boot

sfhdir=/etc

sfhdir=/home
announce; grep -rIi --exclude={*bash_history,clamscan.log,Trash,*viminfo,*vim_mru_files,$grepsfile*} --exclude-dir={*cache,*cargo,*config,*jump,*local,*rustup} $grepterm $sfhdir >> $greps

sfhdir=/root
announce; grep -rIi --exclude={*bash_history,} $grepterm $sfhdir >> $greps

sfhdir=/usr

chown jo:jo $greps

