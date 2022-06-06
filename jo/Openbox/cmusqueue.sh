#!/bin/bash
# vim: set sw=2:

# Joseph Harriott, Mon 22 Nov 2021

# robustly save my last cmus queue
# fcrontab:  @ 2 bash ~/Arch/cmusqueue.sh
# symlinked in my  $ARCHBUILDS/build-scripts/36-symlinks-sshd.sh

source ~/.export-machine; source ~/.export-storage  # get $DROPBOX into cron shell
rwd=$DROPBOX/CAM-toSort0  # root working directory
if pgrep cmus; then
  cmus-remote --server /run/user/1000/cmus-socket -C "cd $rwd"
  cmus-remote --server /run/user/1000/cmus-socket -C 'save -q cmusqueue'
  cd $rwd
  if [[ -f cmusqueue && -s cmusqueue ]]; then
    mv cmusqueue cmusq
    sed -i '1i\\' $rwd/cmusq
    sed -i '1i vim: ft=cmusq nowrap tw=0:' $rwd/cmusq
  else
    rm cmusqueue  # it's empty
  fi
fi


# blank lines here to avoid vim capturing another modeline
