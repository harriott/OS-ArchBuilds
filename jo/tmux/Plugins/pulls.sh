#!/bin/bash

# Joseph Harriott, Sun 10 Oct 2021

# bash pulls.sh  update remote tmux plugins

find . -maxdepth 1 -mindepth 1 -type d | while read pluginName; do
  echo -e "\e[1m $pluginName \e[0m"
  cd "$pluginName"
  git pull origin master
  cd ..
done

. tmux-copy-toolkit-easycopy.sh

