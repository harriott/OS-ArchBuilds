#!/bin/bash
# vim: sw=2:

# notification of disabled keystroke
# ----------------------------------

# chmod 755 $Openbox/shiftPrtSc.sh
# symlinked in  $OSAB/bs-symlinks/jo-2-whenWM-0.sh  to  ~/.config/openbox/shiftPrtSc.sh
# called by  $Obc/rc.xml

notify-send -i /usr/share/icons/hicolor/16x16/apps/ibus-keyboard.png "keystroke shift-PrtSc is disabled"

