#!/usr/bin/env bash

## Saving current date/time
NOW="$(date +'%H-%M-%S_%d-%m-%Y')"

## Going to user home dir
cd ~

## If exists older bp, then save a copy
[ -d .bp ] && mv .bp .bp_${NOW}.bkp

## Clone bp from github and rename folder
git clone https://github.com/wesleyit/bashproject.git || (echo "Cannot reach github."; exit 1)
mv bashproject .bp

## Add to .bashrc (if not already there)
grep -q 'source ~/.bp/bp.sh' || echo -e "\n\n source ~/.bp/bp.sh\n\n"

echo "Setup finished"
