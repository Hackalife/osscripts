#!/bin/sh
MIN=$1 && for i in $(seq $(($MIN*60)) -1 1);
do echo -n "$i, ";
sleep 1;
done;
#osascript -e 'set volume output volume 0';
osascript -e 'tell application "iTunes" to pause';
