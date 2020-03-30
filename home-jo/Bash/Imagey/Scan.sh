#!/bin/bash

# Joseph Harriott, Oct 2019

# $1 manually chooses the scanner because there's no other easy way
#  only one scanning device should be plugged in
# $2 an integer equivalent to scan resolution/100
#  2 is good for Epson Perfection 2480 Photo
#  3 is good for HP ENVY 5532
# $3 is the desired tiff basename
# $4 optionally limits scan height

if [ $1 = "248" ]; then
	siPrefix="scanimage --format=tiff -p --resolution"
	declare -a Resns=(1 2 3 4 6 12)
elif [ $1 = "553" ]; then
    siPrefix="scanimage -p --format=tiff --mode Color --resolution"
	declare -a Resns=(1 2 3 6 12)
else
	exit
fi
if [ $4 ]; then
	height="-y $4"
else
	height=""
fi
for Resn in "${Resns[@]}"; do
	if [[ $Resn = $2 ]]; then
		$siPrefix $2"00" $height > "$3.tiff"
	fi
done
