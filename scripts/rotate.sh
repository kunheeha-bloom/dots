#!/bin/zsh

CURRENT=$(displayplacer list | grep 'Rotation' | awk '{print $2}')
ID=$(displayplacer list | grep 'Persistent' | awk '{print $4}')

if [[ "$CURRENT" == "270" ]]; then
  displayplacer "id:$ID degree:0"
elif [[ "$CURRENT" == "0" ]]; then
  displayplacer "id:$ID degree:270"
fi
