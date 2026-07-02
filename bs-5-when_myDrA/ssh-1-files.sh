#!/bin/bash
# vim: set fdl=3 sw=2:

# on mature machine build:  bash $OSAB/bs-5-when_myDrA/ssh-1-files.sh
# to investigate how keys were originally made,  $ITcore; rg ssh-keygen -l

#=> 0 $skd
skd="$HOME/.ssh" # SSH key directory
[ -d $skd ] || mkdir $skd

#=> 1 $esns
esns="$Enc/Secure1/network/SSH"

#==> 0 gather public keys
cd $esns; mapfile -t pa < <(fd -tf -u -e pub)
pub="$cITCP/networking-SSH/pub"
echo 'vim: ft=ssh_pub_list:' > $pub; echo >> $pub
echo 'made by  $OSAB/bs-5-when_myDrA/ssh-1-files.sh' >> $pub; echo >> $pub
for pf in "${pa[@]}"; do echo "$pf $(cat $pf)" >> $pub; done; echo >> $pub

#==> 1 copy in keys
cik () { cp $esns/$1 $skd/$1; chmod 600 $skd/$1; cp $esns/$1.pub $skd/$1.pub; }

# #===> for DOP3040D11S
# k=id_ed25519-forDOP3040D11S; cik $k

#===> for (all machines) GitHub
k=id_ed25519-forGitHub; cik $k

#===> for HPEB840G38
k=id_ed25519-forHPEB840G38; cik $k

