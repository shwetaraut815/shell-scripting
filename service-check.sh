#!/bin/bash

read -p "enter your service name: " service 

if systemctl is-active --quiet "$service"
then
      echo "$service is running"
else
      echo "check a while"
fi      
