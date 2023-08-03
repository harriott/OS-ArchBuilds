#!/bin/bash
# vim: set sw=2:

# Joseph Harriott, Sun 23 Jul 2023

# robustly save my last cmus queue
# fcrontab:  @ 2 bash ~/Arch/cmusqueue.sh
# symlinked in my  $OSAB/bs-symlinks/jo-0.sh

source ~/.export-machine; source ~/.export-storage  # get  $Drpbx  into cron shell
rwd=$Drpbx/CAM-toSort0  # root working directory
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
