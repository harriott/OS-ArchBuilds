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
echo -e "\e[1m7z-ing:\e[0m"
echo "/home/jo/.local/share/mail/"
echo -e "\e[92m/home/jo/.local/share/mail.7z\e[0m"
7z a -mx1 ~/.local/share/mail.7z ~/.local/share/mail
echo -e "\e[1mcp-ing:\e[0m"
mkdir $bfolder
nodes=(
  "/home/jo/.cache/mutt-wizard" \
  "/home/jo/.config/msmtp/config" \
  "/home/jo/.config/mutt" \
  "/home/jo/.local/share/mail.7z" \
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
