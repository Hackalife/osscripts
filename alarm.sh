#!/usr/bin/env bash
secs=$(($1 * 60))
while [ $secs -gt 0 ]; do
   echo -ne "$secs\033[0K\r"
   sleep 1
   : $((secs--))
done
osascript -e 'tell app "System Events" to display dialog "Time is over"'
