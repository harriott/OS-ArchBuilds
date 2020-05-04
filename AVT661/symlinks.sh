#!/bin/bash
# vim: fdm=expr fdc=1 ft=shbuild:

# bash -x <thisfile>.sh
#  for occasional use
#  for some reason, any sudo's need to be written in this file (instead of sudo bash...)

#=> logged in as jo, in X

# rm                                                   ~/.config/beets/config.yaml

# sudo ln -sf $ARCHBUILDS/root/bash_profile /root/.bash_profile
# sudo rm /root/bashrc-console
# sudo rm /root/.bashrc-console
# sudo rm /root/bashrc-files
# sudo rm /root/.bashrc-files

#=> logged in as jo, in Console
#   full paths for recovering Openbox

# ln -sf /mnt/SDSSDA240G/Dropbox/JH/IT_stack/onGitHub/ArchBuilds/AcerVeritonT661/jo/Music/cmus-rc.conf ~/.config/cmus/rc
# ln -sf /mnt/SDSSDA240G/Dropbox/JH/IT_stack/onGitHub/ArchBuilds/jo/openbox/rc.xml                     ~/.config/openbox/rc.xml
# ln -sf /mnt/SDSSDA240G/Dropbox/JH/IT_stack/onGitHub/ArchBuilds/jo/zathurarc                          ~/.config/zathura/zathurarc
# ln -sf /mnt/SDSSDA240G/Dropbox/JH/IT_stack/onGitHub/ArchBuilds/jo/gpg-agent.conf                     ~/.gnupg/gpg-agent.conf
# ln -sf /mnt/SDSSDA240G/Dropbox/JH/IT_stack/onGitHub/ArchBuilds/AcerVeritonT661/jo/SSHconfig          ~/.ssh/config

