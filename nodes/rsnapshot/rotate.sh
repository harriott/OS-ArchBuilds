#!/bin/bash

# Joseph Harriott - Tue 07 Jul 2026

# 1) bash $ABno/rsnapshot/rotate.sh aaa &
# 2) when have  $rsnapshot/aaa.9,  bash $ABno/rsnapshot/rotate.sh bbb &  rotates it to  $rsnapshot/bbb.0

notify-send "rsnapshot rotate will start"
doas rsnapshot $1  # rotates from  $rsnapshot/.sync, using hard links
notify-send -u critical "rsnapshot rotate finished"
[[ $host == DOP3040D11S ]] && source $ABno/rsnapshot/log.sh

