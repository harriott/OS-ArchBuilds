#!/bin/bash

# sequence of possible commands to allow recovery of lost tab data

cd ~/Play0
[[ -d copyq ]] && rm -r copyq; cp -r ~/.config/copyq .
rm -r ~/.config/copyq

cp -r /mnt/WD1001FALS/rsnapshot/daily.1/localhost/home/jo/.config/copyq ~/.config
cp -r /mnt/WD1001FALS/rsnapshot/daily.2/localhost/home/jo/.config/copyq ~/.config

pkill copyq
copyq &

[[ -f ~/CopyQdata.txt ]] && rm ~/CopyQdata.txt
copyq eval -- "tab('Me'); for(i=size(); i>1; --i) print(str(read(i-1)) + '\n');" > ~/CopyQdata.txt
copyq eval -- "tab('handy'); for(i=size(); i>1; --i) print(str(read(i-1)) + '\n');" > ~/CopyQdata.txt

cp -r copyq ~/.config/
