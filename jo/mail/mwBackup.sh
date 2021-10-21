# !/bin/bash
# vim: set et tw=0:

# Mutt Wizard files backup
# ------------------------
# this isn't needed once  rsnapshot  is running

# Labels for backup name
date=$(date "+%F-%H-%M")
bfolder="$muttBasckupDestination/$date"

# Check if target directory exists
if [ ! -d $muttBasckupDestination ]; then
  echo "The target directory ain't there, quitting."
  exit
fi
echo -e "\e[1m7z-ing:\e[0m"
echo "$maild/"
echo -e "\e[92m$maild.7z\e[0m"
7z a -mx1 $maild.7z $maild
echo -e "\e[1mcp-ing:\e[0m"
mkdir $bfolder
nodes=(
  "/home/jo/.cache/mutt-wizard" \
    # - created by Mutt Wizard, can eventually be deleted
  "/home/jo/.config/msmtp/config" \
  "/home/jo/.config/mutt" \
    # - created by Mutt Wizard, can eventually be deleted
  "$maild.7z" \
  "/home/jo/.mbsyncrc" \
)
for node in "${nodes[@]}"; do
  mynode=${node/\/home\/jo\/\./}
  # mynode=${node/\~\/\./}
  backupnode=${mynode//\//_}
  echo "$node"
  echo -e "\e[92m$bfolder/$backupnode\e[0m"
  cp -r $node "$bfolder/$backupnode" # (can't stat "~/...")
done
