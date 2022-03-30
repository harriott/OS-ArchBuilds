#!/bin/bash
# vim: sw=2:

# Joseph Harriott, Thu 17 Mar 2022
# S  is defined in  $Bash/bashrc-wm

# $1 manually chooses the scanner because there's no other easy way
#  only one scanning device should be plugged in
#  248 selects Epson Perfection 2480 Photo
#  55n selects HP ENVY 5532 via network
#  55u selects HP ENVY 5532 via USB
# $2 an integer equivalent to scan resolution/100
#  2 is good for Epson Perfection 2480 Photo
#  3 is good for HP ENVY 5532
# $3 is the desired tiff basename
# $4 optionally limit, in mm, of scan height (max 297 for ENVY 5532)

if [ $1 = "248" ] ; then
  siPrefix="scanimage --format=tiff -p --resolution"
  declare -a Resns=(1 2 3 4 6 12)
elif [ $1 = "55n" ] || [ $1 = "55u" ] ; then
  declare -a Resns=(1 2 3 6 12)
  if [ $1 = "55n" ] ; then
    device=$'--device \'hpaio:/net/ENVY_5530_series\?ip=192.168.43.250\''
  fi  # from  hp-makeuri
  siPrefix="scanimage $device -p --format=tiff --mode Color --resolution"
else
  echo 'no such scanner'
  exit
fi
if [ $4 ] ; then
  height="-y $4"
else
  height=""
fi
for Resn in "${Resns[@]}"; do
  if [[ $Resn = $2 ]]; then
    resolution=$2"00"
    goscan="$siPrefix $resolution $height > $3.tiff"
    eval $goscan
  fi
done

