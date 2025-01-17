#!/bin/bash
# vim: set fdl=1:

# manage clips

#=> restore from rsnapshot
cd ~/Play0
[[ -d copyq ]] && rm -r copyq
cp -r $rsnapshot/hourly.2/localhost/home/jo/.config/copyq copyq
pkill copyq
sleep 2
rsync -rt --delete copyq ~/.config/
copyq &
[[ -d copyq ]] && rm -r copyq

# #=> export &handy
# [[ -f ~/CopyQ-handy.txt ]] && rm ~/CopyQ-handy.txt
# copyq eval -- "tab('&handy'); for(i=size(); i>1; --i) print(str(read(i-1)) + '\n');" > ~/CopyQ-handy.txt

