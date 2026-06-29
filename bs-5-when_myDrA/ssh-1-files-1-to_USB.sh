#!/bin/bash
# vim: set fdl=1 sw=2:

# on mature machine build:  bash $OSAB/bs-5-when_myDrA/ssh-files-1-to_USB.sh

#=> copy SSH files to safe USB drive
u=K8GBDTIG3
# u=KDTG311281
s=/run/media/jo/$u/SSH_files
[ -d $s ] || mkdir $s
cp $cITCP/encoding/gitconfig-JH $s/gitconfig-JH
S1="$Enc/Secure1/network/SSH"
cp $S1/id_ed25519-forGitHub $s/id_ed25519-forGitHub
cp $S1/id_ed25519-forGitHub.pub $s/id_ed25519-forGitHub.pub
cp $OSAB/bs-5-when_myDrA/ssh-1-files-2-to_machine.sh files-to_machine.sh
cp $cITCP/networking-SSHconfig/$host $s/SSHconfig

