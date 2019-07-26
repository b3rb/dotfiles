#!/bin/bash
# dwm status bar

while true;
do
    d=$(date '+%a %b %d, %I:%M %p')
    w=$(nmcli -c no dev status | awk 'NR <= 2 && NR >= 2{print $3}')
    xsetroot -name " $d "
    sleep 0.1;
done;
