#!/bin/sh
# vim: fdl=1 sw=2:

# check my rsnapshots

# bash $OSAB/mb-DOP3040D11S/rsnapshots.sh

#=> automated
# first sync took over 9 hours

#==> hourly.0
echo "${tpf5}hourly.0${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.0/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.0/localhost | wc -l)  took 4m to report  1096359

#==> hourly.1
echo "${tpf5}hourly.1${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.1/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.1/localhost | wc -l)  took 22s to report  1098195

#==> hourly.2
echo "${tpf5}hourly.2${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.2/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.2/localhost | wc -l)  took 22s to report  1098195

