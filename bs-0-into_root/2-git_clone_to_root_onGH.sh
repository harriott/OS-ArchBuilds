#!/bin/bash
# vim: se fdl=1 sw=2:

# . $OSAB/bs-0-into_root/2-git_clone_to_root_onGH.sh
# until  $myDrA == 1

set -v  # prints each statement here, including comments

#=> 0 repositories 0 get
[ -d /root/onGH ] || mkdir /root/onGH
git clone https://github.com/harriott/misc /root/onGH/misc
git clone https://github.com/harriott/OS-ArchBuilds /root/onGH/OS-ArchBuilds
git clone https://github.com/harriott/OS-Linux /root/onGH/OS-Linux
git clone https://github.com/harriott/vimfiles /root/onGH/vimfiles
git clone https://github.com/harriott/misc /root/onGH/misc

#=> 0 repositories 1 refresh
#  for r in misc OS-ArchBuilds OS-Linux vimfiles; do cd /root/onGH/$r; git pull; done

