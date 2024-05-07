#!/bin/sh
git pull
gbc3 -agv > Pipboy.log
gba3
cp Pipboy.gambas $HOME/bin/pipboy/
