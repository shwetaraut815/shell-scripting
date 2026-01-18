#!/bin/bash

#kill the process consuming the most memory

pid=$( ps aux --sort=-%mem | awk 'NR==2 {print $2}' )   # ps aux = It shows all running processes on the system

kill -9 $pid

echo "process with $pid has been killed"

ps aux 
# list all running processes on the system with detailed information,
#including processes started by other users and background services.


## Get PID of process using the most memory
#pid=$(ps aux --sort=-%mem | awk 'NR==2 {print $2}')
#process=$(ps aux --sort=-%mem | awk 'NR==2 {print $11}')

#if [ -n "$pid" ]; then
#   kill -9 "$pid"
#   echo "Process '$process' (PID: $pid) consuming the most memory has been killed."
#else
#   echo "No process found."
#fi

