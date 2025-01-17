#!/bin/bash

# Joseph Harriott http://momentary.eu/ Last updated: Fri 26 Jun 2015

# Quickly grab all of the directory's photo-taken times.
# ------------------------------------------------------

echo "" > taken.txt
for imgft in "*.JPG" "*.jpg"; do
	echo "$imgft"
	imgftexists=$(find . -maxdepth 1 -type f -name "$imgft")
	if [ ${#imgftexists} -gt 0 ]; then
		exif $imgft |grep tags > et1
		exif $imgft |grep "Date and Time (.rigi" > et2
		sed -i "s/EXIF tags in '//g" et1
		sed -i "s/' ('Intel' byte order)://g" et1
		sed -i 's/Date and Time (Origi|/taken /g' et2
		paste -d ' ' et1 et2 >> taken.txt
		rm et1 et2
	fi
done
echo "- output written to taken.txt"
