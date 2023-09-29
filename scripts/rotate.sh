#!/bin/zsh
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Rotate
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Rotate LG Dualup Monitor

CURRENT=$(displayplacer list | grep 'Rotation' | awk '{print $2}')
ID=$(displayplacer list | grep 'Persistent' | awk '{print $4}')

if [[ "$CURRENT" == "270" ]]; then
  displayplacer "id:$ID degree:0"
elif [[ "$CURRENT" == "0" ]]; then
  displayplacer "id:$ID degree:270"
fi
