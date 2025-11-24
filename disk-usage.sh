#!/bin/bash

# send alert when disk usage hits at threshold

threshold=70

usage=$( df -h / | grep / | awk '{print $5}' | sed 's/%//g' )

if [ "$usage" -ge "$threshold" ];
then 
   echo "warning: disk usage is high"
else 
   echo "disk usage is ok"
fi