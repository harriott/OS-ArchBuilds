#!/bin/bash

# Joseph Harriott - Tue 07 Jul 2026

# bash $ABno/rsnapshot/sync.sh &

dunstify "rsnapshot sync will start"
doas rsnapshot sync  # from sources into  $rsnapshot/.sync
dunstify -u critical "rsnapshot sync finished"
[[ $host == DOP3040D11S ]] && source $ABno/rsnapshot/log.sh

