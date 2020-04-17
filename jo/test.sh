# vim: set ft=sh tw=0:
#
  # echo "Going to startx in 8 seconds"
  # read -t 3 -p "- enter any alphanumeric to abort : " keyhit
  # if [ $keyhit ]; then
    # echo "okay, startx yourself when ready"
  # else
    # echo "too late"
  # fi

# echo "Going to startx in 3 seconds"
# if (read -rsn1 -t3 -p"- press any key to abort"); then
  # echo -e "\naborted"
# else
  # echo "too late"
# fi

  if (read -rsn1 -t3 -p"Going to startx in 3 seconds, press any key to abort: "); then
    echo "Okay, startx yourself when ready..."
  else
    echo "okay, go"
  fi
