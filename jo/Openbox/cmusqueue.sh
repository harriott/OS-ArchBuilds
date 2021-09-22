#!/bin/bash
# vim: set sw=2:

# Joseph Harriott, Tue 14 Sep 2021

# robustly save my last cmus queue
# fcrontab:  @ 2 bash ~/Arch/cmusqueue.sh

rwd=/mnt/SD480GSSDPlus/Dropbox/CAM-toSort0  # root working directory
if pgrep cmus; then
  cmus-remote --server /run/user/1000/cmus-socket -C "cd $rwd"
  cmus-remote --server /run/user/1000/cmus-socket -C 'save -q cmusqueue'
  cd $rwd
  if [[ -f cmusqueue && -s cmusqueue ]]; then
    mv cmusqueue cmusq
  else
    rm cmusqueue  # it's empty
  fi
fi
