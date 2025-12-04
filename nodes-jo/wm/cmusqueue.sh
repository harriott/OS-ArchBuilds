#!/bin/bash
# vim: set sw=2:

# Joseph Harriott, Wed 08 May 2024

# robustly save my last cmus queue

# bash $ABjo/wm/cmusqueue.sh
#  symlinked in my  $OSAB/nodes-set/jo-0.sh
#  ll ~/Arch/cmusqueue.sh
#  fcrontab:  @ 1 bash ~/Arch/cmusqueue.sh

# DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus /usr/bin/notify-send -u critical "cmusqueue.sh $(date +%H%M)"  # uncomment to check if this script is being called

source ~/.export-machine; source ~/.export-storage  # get  $Drpbx  into cron shell
rwd="$Drpbx/Cop/AM-toSort0"  # root working directory
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
