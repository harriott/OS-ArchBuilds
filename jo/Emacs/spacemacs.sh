#!/bin/bash

# Joseph Harriott - Tue 06 Sep 2022

# run Spacemacs from its seperate configuration
# ---------------------------------------------

# (chmod 755 $ABjo/Emacs/spacemacs.sh)
# symlinked in my  $OSAB/nodes-set/jo-2-whenWM-1.sh
#  to provide command  spacemacs
#   used in  $Obc/schema.pl

# Tests:
#  bash $ABjo/Emacs/spacemacs.sh &
#  spacemacs &

HOME=/home/jo/.sm emacs  # don't want  %F  for spacemacs

