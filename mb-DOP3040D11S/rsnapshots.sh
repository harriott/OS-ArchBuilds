#!/bin/sh
# vim: sw=2:

# check my rsnapshots

# bash $OSAB/mb-DOP3040D11S/rsnapshots.sh

#=> automated
# depends on  $OSAB/bs-1-to_jo/6-as_root-rsnapshot_automated.sh
# first sync took over 9 hours

#==> hourly.0
echo "${tpf5}hourly.0${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.0/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.0/localhost | wc -l)  took 52s to report  1096359

#==> hourly.1
echo "${tpf5}hourly.1${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.1/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.1/localhost | wc -l)  took 22s to report  1098195

#==> hourly.2
echo "${tpf5}hourly.2${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.2/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.2/localhost | wc -l)  took 22s to report  108085

#==> hourly.3
# time sudo rm -r $rsnapshot/hourly.3  took 5m

#==> hourly.4
# time sudo rm -r $rsnapshot/hourly.4  took 5m

#==> hourly.5
echo "${tpf5}hourly.5${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.5/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.5/localhost | wc -l)  took 22s to report  108085

#==> hourly.6
# time sudo rm -r $rsnapshot/hourly.6  took 4m

#==> hourly.7
# time sudo rm -r $rsnapshot/hourly.7  took 3m

#==> hourly.8
# time sudo rm -r $rsnapshot/hourly.8  took 3m

#==> hourly.9
echo "${tpf5}hourly.9${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.9/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.9/localhost | wc -l)  took 22s to report  108085

#==> hourly.10
# time sudo rm -r $rsnapshot/hourly.10  took 3m

#==> hourly.11
echo "${tpf5}hourly.11${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.11/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.11/localhost | wc -l)  took 22s to report  108085

#==> hourly.12
# time sudo rm -r $rsnapshot/hourly.12  took 3m

#==> hourly.13
echo "${tpf5}hourly.13${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.13/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.13/localhost | wc -l)  took 22s to report  108085

#==> hourly.14
# time sudo rm -r $rsnapshot/hourly.14  took 2m

#==> hourly.15
echo "${tpf5}hourly.15${tpfn}"
stat -c '%y %n' $rsnapshot/hourly.15/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.15/localhost | wc -l)  took 22s to report  108085

#==> hourly.16
# time sudo rm -r $rsnapshot/hourly.16  took 4m

#==> hourly.17
# time sudo rm -r $rsnapshot/hourly.17  took 3m

#==> hourly.18
# time sudo rm -r $rsnapshot/hourly.18  took 3m

#==> hourly.19
# time sudo rm -r $rsnapshot/hourly.19  took 3m

#==> hourly.20
# time sudo rm -r $rsnapshot/hourly.20  took 3m

#==> hourly.21
# time sudo rm -r $rsnapshot/hourly.21  took 3m

#==> hourly.22
# time sudo rm -r $rsnapshot/hourly.22  took 3m

#==> hourly.23
# time sudo rm -r $rsnapshot/hourly.23  took 3m

#==> daily.0
echo "${tpf5}daily.0${tpfn}"
stat -c '%y %n' $rsnapshot/daily.0/localhost/var/log/wtmp
# time (sudo find $rsnapshot/daily.0/localhost | wc -l)  took 22s to report  108085

#==> daily.1
echo "${tpf5}daily.1${tpfn}"
stat -c '%y %n' $rsnapshot/daily.1/localhost/var/log/wtmp
# time (sudo find $rsnapshot/daily.1/localhost | wc -l)  took 22s to report  108085

#==> daily.2
echo "${tpf5}daily.2${tpfn}"
stat -c '%y %n' $rsnapshot/daily.2/localhost/var/log/wtmp
# time (sudo find $rsnapshot/daily.2/localhost | wc -l)  took 22s to report  108085

#==> daily.3
echo "${tpf5}daily.3${tpfn}"
stat -c '%y %n' $rsnapshot/daily.3/localhost/var/log/wtmp
# time (sudo find $rsnapshot/daily.3/localhost | wc -l)  took 22s to report  108085

#==> daily.4
echo "${tpf5}daily.4${tpfn}"
stat -c '%y %n' $rsnapshot/daily.4/localhost/var/log/wtmp
# time (sudo find $rsnapshot/daily.4/localhost | wc -l)  took 22s to report  108085

#==> daily.5
echo "${tpf5}daily.5${tpfn}"
stat -c '%y %n' $rsnapshot/daily.5/localhost/var/log/wtmp
# time (sudo find $rsnapshot/daily.5/localhost | wc -l)  took 22s to report  108085

#==> weekly.0
echo "${tpf5}weekly.0${tpfn}"
stat -c '%y %n' $rsnapshot/weekly.0/localhost/var/log/wtmp
# time (sudo find $rsnapshot/weekly.0/localhost | wc -l)  took 22s to report  108085

#==> weekly.1
echo "${tpf5}weekly.1${tpfn}"
stat -c '%y %n' $rsnapshot/weekly.1/localhost/var/log/wtmp
# time (sudo find $rsnapshot/weekly.1/localhost | wc -l)  took 22s to report  108085

#==> weekly.2
echo "${tpf5}weekly.2${tpfn}"
stat -c '%y %n' $rsnapshot/weekly.2/localhost/var/log/wtmp
# time (sudo find $rsnapshot/weekly.2/localhost | wc -l)  took 22s to report  108085

#==> weekly.3
echo "${tpf5}weekly.3${tpfn}"
stat -c '%y %n' $rsnapshot/weekly.3/localhost/var/log/wtmp
# time (sudo find $rsnapshot/weekly.3/localhost | wc -l)  took 22s to report  108085

#=> manual - aaa.0
# renamed from  manual.0
echo "${tpf5}aaa.0${tpfn}"
stat -c '%y %n' $rsnapshot/aaa.0/localhost/var/log/wtmp
# 251128-09h, time (sudo find $rsnapshot/aaa.0/localhost | wc -l)  took 3m to report  1096162

