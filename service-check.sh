#!/bin/bash

read -p "enter your service name: " service 

if systemctl is-active --quiet "$service"
then
      echo "$service is running"
else
      echo "check a while"
fi      
=========================
# using for loop

#!/bin/bash

services=("nginx" "httpd" "docker")

for svc in "${services[@]}"; do
    if systemctl is-active --quiet "$svc"; then
        echo "$svc is running"
    else
        echo "$svc is NOT running"
    fi
done
