#!/bin/sh
# vim: sw=2:

# check my rsnapshots

# bash $OSAB/mb-sbMb/rsnapshots.sh

#=> automated
# depends on  $OSAB/bs-1-to_jo/6-as_root-rsnapshot_automated.sh

#==> hourly.0
echo "${tpf5}hourly.0${tpfn}"
head -n1 $rsnapshot/hourly.0/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/hourly.0/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/hourly.0/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.0/localhost | wc -l)  reports  2060709

#==> hourly.1
# sudo rm -r $rsnapshot/hourly.1

#==> hourly.2
echo "${tpf5}hourly.2${tpfn}"
head -n1 $rsnapshot/hourly.2/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/hourly.2/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/hourly.2/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.2/localhost | wc -l)  took 23m to report  2060709

#==> hourly.3
echo "${tpf5}hourly.3${tpfn}"
head -n1 $rsnapshot/hourly.3/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/hourly.3/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/hourly.3/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.3/localhost | wc -l)  took 5m to report  2323173

#==> hourly.4
echo "${tpf5}hourly.4${tpfn}"
head -n1 $rsnapshot/hourly.4/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/hourly.4/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/hourly.4/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.4/localhost | wc -l)  took 4m to report  2170382

#==> hourly.5
# sudo rm -r $rsnapshot/hourly.5

#==> hourly.6
echo "${tpf5}hourly.6${tpfn}"
head -n1 $rsnapshot/hourly.6/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/hourly.6/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/hourly.6/localhost/var/log/wtmp
# time (sudo find $rsnapshot/hourly.6/localhost | wc -l)  took 4m to report  2170382

#==> hourly.7
# sudo rm -r $rsnapshot/hourly.7

#==> hourly.8
# sudo rm -r $rsnapshot/hourly.8

#==> hourly.9
# sudo rm -r $rsnapshot/hourly.9

#==> hourly.10
# sudo rm -r $rsnapshot/hourly.10

#==> hourly.11
# time sudo rm -r $rsnapshot/hourly.11  took 33m

#==> hourly.12
# time sudo rm -r $rsnapshot/hourly.12  took 7m

#==> hourly.13
# time sudo rm -r $rsnapshot/hourly.13  took 5m

#==> hourly.14
# time sudo rm -r $rsnapshot/hourly.14  took 6m

#==> hourly.15
# time sudo rm -r $rsnapshot/hourly.15  took 6m

#==> hourly.16
# time sudo rm -r $rsnapshot/hourly.16  took 6m

#==> hourly.17
# time sudo rm -r $rsnapshot/hourly.17  took 6m

#==> hourly.18
# time sudo rm -r $rsnapshot/hourly.18  took 28m

#==> hourly.19
# time sudo rm -r $rsnapshot/hourly.19  took 8m

#==> hourly.20
# time sudo rm -r $rsnapshot/hourly.20  took 6m

#==> hourly.21
# time sudo rm -r $rsnapshot/hourly.21  took 6m

#==> hourly.22
# time sudo rm -r $rsnapshot/hourly.22  took 6m

#==> hourly.23
# time sudo rm -r $rsnapshot/hourly.23  took 6m

#==> daily.0
# time sudo rm -r $rsnapshot/daily.0  took 5m

#==> daily.1
# time sudo rm -r $rsnapshot/daily.1  took 5m

#==> daily.2
# time sudo rm -r $rsnapshot/daily.2  took 6m

#==> daily.3
# time sudo rm -r $rsnapshot/daily.3  took 20m

#==> daily.4
# time sudo rm -r $rsnapshot/daily.4  took 7m

#==> daily.5
# time sudo rm -r $rsnapshot/daily.5  took 5m

#==> daily.6
# time sudo rm -r $rsnapshot/daily.6  took 7m

#==> weekly.0
# time sudo rm -r $rsnapshot/weekly.0  took 5m

#==> weekly.1
# time sudo rm -r $rsnapshot/weekly.1  took 5m

#==> weekly.2
# time sudo rm -r $rsnapshot/weekly.2  took 16m

#==> weekly.3
# time sudo rm -r $rsnapshot/weekly.3  took 8m

#==> monthly.0
# time sudo rm -r $rsnapshot/monthly.0  took 8m

#==> monthly.1
echo "${tpf5}monthly.1${tpfn}"
head -n1 $rsnapshot/monthly.1/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/monthly.1/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/monthly.1/localhost/var/log/wtmp
# time (sudo find $rsnapshot/monthly.1/localhost | wc -l)  took 4m to report  2170382

#=> manual - aaa.0
# renamed from  manual.0
echo "${tpf5}aaa.0${tpfn}"
head -n1 $rsnapshot/aaa.0/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/aaa.0/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/aaa.0/localhost/var/log/wtmp
# time (sudo find $rsnapshot/aaa.0/localhost | wc -l)
#  251127-11h, took 8m to report  2063941
#  251202-08h43m, took 2m to report  2056214

#=> manual - aaa.1
echo "${tpf5}aaa.1${tpfn}"
head -n1 $rsnapshot/aaa.1/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/aaa.1/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/aaa.1/localhost/var/log/wtmp
# 251126, time (sudo find $rsnapshot/aaa.1/localhost | wc -l)  took 8m to report  2063013

#=> manual - aaa.2
echo "${tpf5}aaa.2${tpfn}"
head -n1 $rsnapshot/aaa.2/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/aaa.2/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/aaa.2/localhost/var/log/wtmp
# 251125, time (sudo find $rsnapshot/aaa.2/localhost | wc -l)  took 8m to report  2063013

#=> manual - aaa.3
echo "${tpf5}aaa.3${tpfn}"
head -n1 $rsnapshot/aaa.3/localhost/home/jo/Arch/f1t2t3/f1t2t3.log
stat -c '%y %n' $rsnapshot/aaa.3/localhost/$TeNo/md-JH-Private/Private.md
stat -c '%y %n' $rsnapshot/aaa.3/localhost/var/log/wtmp
# 251125, time (sudo find $rsnapshot/aaa.3/localhost | wc -l)  took 8m to report  2063013

