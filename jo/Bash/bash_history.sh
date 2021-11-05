#!/bin/bash

# Joseph Harriott, Mon 23 Aug 2021

# robustly save my BASH history, for finding ancient commands
# fcrontab:  @ 20 bash ~/Arch/bash_history.sh

cat ~/.bash_history >> ~/Arch/bash_history-tmp
cat ~/Arch/bash_history-tmp | awk '!a[$0]++' | sort > ~/Arch/bash_history
rm ~/Arch/bash_history-tmp

# As a terminal's history isn't appended to  ~/.bash_history  until that terminal is closed,
# can safely, from a terminal:  cp ~/Arch/bash_history ~/.bash_history

