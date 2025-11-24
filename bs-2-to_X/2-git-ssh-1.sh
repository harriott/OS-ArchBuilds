#!/bin/bash
# vim: set fdl=1 sw=2:

# on sbMb:  bash $OSAB/bs-2-to_X/2-git-ssh-1.sh

#=> 0 make directory on safe USB drive
u=K8GBDTIG3
# u=KDTG311281
s=/run/media/jo/$u/GHssh
[ -d $s ] || mkdir $s

#=> 1 grab configurations
cp $cITCP/encoding/gitconfig-JH $s/gitconfig-JH
cp $cITCP/networking/SSHconfig/AsusW202 $s/SSHconfig
cp $cITCP/networking/SSHconfig/i34G1TU02 $s/SSHconfig
cp $cITCP/networking/SSHconfig/sbMb $s/SSHconfig

#=> 1 grab SSH keys
S1="$Enc/Secure1/networking/SSH"
cp $S1/id_ed25519-forGitHub $s/id_ed25519-forGitHub
cp $S1/id_ed25519-forGitHub.pub $s/id_ed25519-forGitHub.pub

#=> 2 grab next part
cp $OSAB/bs-2-to_X/2-git-ssh-2.sh $s/

