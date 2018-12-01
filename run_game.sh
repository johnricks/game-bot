#!/bin/sh

# --strict
./halite --replay-directory replays/  -vvv --width 32 --height 32 "./pypy3 MyBot.pypy" "./pypy3  MyBot.pypy"
