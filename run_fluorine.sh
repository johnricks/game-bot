#!/bin/bash

if [ -z "$1" ]; then
    TargetFile=$(ls -r -t -1  ~/dev/Halite-III-python-bot/replays/*.hlt | tail -1)
else
    TargetFile=$1
fi

if [ -f /usr/local/bin/electron ]; then
    ELECTRON=/usr/local/bin/electron
elif [ -f ./fluorine/node_modules/.bin/electron ]; then 
    ELECTRON=./fluorine/node_modules/.bin/electron
else
    echo 'Electron not found'
    exit 1
fi

$ELECTRON ./fluorine -o  $TargetFile



