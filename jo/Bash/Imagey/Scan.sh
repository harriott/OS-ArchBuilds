#!/bin/bash
# vim: sw=2:

# Joseph Harriott

# $1 manually chooses the scanner because there's no other easy way
#  only one scanning device should be plugged in
#  248 selects Epson Perfection 2480 Photo
#  55n selects HP ENVY 5532 via network
#  55u selects HP ENVY 5532 via USB
#   when no further arguments are given, it appends the network address to network5532.log
# $2 an integer equivalent to scan resolution/100
#  2 is good for Epson Perfection 2480 Photo
#  3 is good for HP ENVY 5532
#  when empty, triggers an attempt to log HP ENVY 5532 network address
# $3 is the desired tiff basename
# $4 optionally limit, in mm, of scan height (max 297 for ENVY 5532)

if [ $1 = "248" ] ; then
  siPrefix="scanimage --format=tiff -p --resolution"
  declare -a Resns=(1 2 3 4 6 12)
elif [ $1 = "55n" ] || [ $1 = "55u" ] ; then
  declare -a Resns=(1 2 3 6 12)
  if [ $1 = "55n" ] ; then
    n5log="$( dirname "${BASH_SOURCE[0]}" )/network5532.log"
    if [ $2 ] ; then
      device="--device $(awk 'END{print $3}' $n5log)"
    else
      echo 'grabbing HP ENVY 5532 network address to network5532.log ...'
      mapfile -t siL < <(scanimage -L | grep net | awk '{ print $2 }' )
      if [ "$siL" ] ; then
        echo "$(date "+%F %H:%M:%S") ${siL[0]/\`/\'}" >> $n5log
        if [ "${siL[1]}" ] ; then
          echo "$(date "+%F %H:%M:%S") ${siL[1]/\`/\'}" >> $n5log
        fi # a 2nd address was discovered
      else
        echo "${tpf5b}can't find a network address${tpfn}"
      fi
    fi
  fi
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
    # $siPrefix $2"00" $height > "$3.tiff"
    resolution=$2"00"
    goscan="$siPrefix $resolution $height > $3.tiff"
    eval $goscan
  fi
done
