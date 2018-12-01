#!/bin/bash

Ts=$(date +"%s")

MYBOT=MyBot.pypy

BOT_DIR=bots/bot-$Ts

mkdir -p $BOT_DIR

zip -r Mybot-$Ts-bot.zip  $MYBOT hlt -x hlt/__pycache__/\*

retval=$(hlt bot -b Mybot-$Ts-bot.zip upload)

echo $retval

cp $MYBOT $BOT_DIR

cp -r hlt $BOT_DIR

mv Mybot-$Ts-bot.zip $BOT_DIR

# done
