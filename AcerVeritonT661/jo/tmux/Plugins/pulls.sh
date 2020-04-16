#!/bin/bash

# Joseph Harriott, Thu 28 Nov 2019

# bash pulls.sh  when you want to update your remote plugins

# helptags $HOME/.vim

find . -maxdepth 1 -mindepth 1 -type d | while read pluginName; do
  echo -e "\e[1m $pluginName \e[0m"
  cd "$pluginName"
  git pull origin master
  cd ..
done
