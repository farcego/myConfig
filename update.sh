#!/bin/bash

src="/home/fer/"
dest="/media/fer/FER/home"
log="/media/fer/FER/rsyncBackup.log"

# Timestamp
echo "==== $(date) ====" >> "$log"

# Run rsync with exclusions
rsync -avzh \
      --exclude="snap/" \
      --exclude="cpdb" \
      --exclude="trizen" \
      --exclude=".*" \
      "$src" "$dest" >> "$log" 2>&1
