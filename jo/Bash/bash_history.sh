#!/bin/bash

# Joseph Harriott, Thu 10 Aug 2023

# $Bash/bash_history.sh  (see  $OSAB/bs-symlinks/jo-0.sh)

# robustly save my BASH history, for finding ancient commands
# fcrontab:  @ 20 bash ~/Arch/bash_history.sh

cat ~/.bash_history >> ~/Arch/bash_history-tmp
cat ~/Arch/bash_history-tmp | awk '!a[$0]++' | sort > ~/Arch/bash_history
rm ~/Arch/bash_history-tmp

