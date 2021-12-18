#! /bin/sh

# implemented by my  $ARCHBUILDS/build-scripts/37-as_root-NMdispatcher.sh

if [ "$2" = "up" ]; then
    # su jo -c 'DISPLAY=:0 dunstify "checking time with NTP daemon"'
    sudo -u jo DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus dunstify "checking time with NTP daemon"
    ntpd -qg
    hwclock --systohc
fi

