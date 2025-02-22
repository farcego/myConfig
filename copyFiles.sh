#!/bin/bash
LAST_RUN_FILE="/tmp/last_copy_run"

# Check if the last run time is stored and if 48 hours have passed (48 hours = 172800 seconds)
if [ -f "$LAST_RUN_FILE" ]; then
    LAST_RUN=$(cat "$LAST_RUN_FILE")
    NOW=$(date +%s)
    if [ $(( NOW - LAST_RUN )) -lt 172800 ]; then
        # Less than 48 hours since the last run; exit the script.
        exit 0
    fi
fi

# Your file copying commands go here
# cp /source/path/* /destination/path/
cp ~/HOME-INST/inst.sh ~/RESEARCH/FER/myConfig/myFiles/inst.sh
cp ~/Renviron ~/RESEARCH/FER/myConfig/myFiles/Renviron

# Update the last run time
date +%s > "$LAST_RUN_FILE"
