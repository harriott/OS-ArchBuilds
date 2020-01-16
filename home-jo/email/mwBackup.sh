# !/bin/bash
# vim: set et tw=0:

# Mutt Wizard files backup
# ------------------------

# Backup destination
backdest=/mnt/HD103SJ/Share-More/mw-AVT661

# Labels for backup name
date=$(date "+%F-%H-%M")
bfolder="$backdest/$date"

# Check if target directory exists
if [ ! -d $backdest ]; then
  echo "The target directory ain't there, quitting."
  exit
fi
echo "rsync-ing:"
mkdir $bfolder
nodes=(
  "/home/jo/.cache/mutt-wizard" \
  "/home/jo/.config/msmtp/config" \
  "/home/jo/.config/mutt" \
  "/home/jo/.local/share/mail" \
  "/home/jo/.mbsyncrc" \
  "/home/jo/.notmuch-config" \
)
for node in "${nodes[@]}"; do
  mynode=${node/\/home\/jo\/\./}
  backupnode=${mynode//\//_}
  echo $backupnode
  cp -r $node "$bfolder/$backupnode"
done
