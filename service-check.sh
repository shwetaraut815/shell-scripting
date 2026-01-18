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

### --quite :: It suppresses output and returns only the exit status.

## I used shell scripts to monitor services and automatically restart them if required.

#!/bin/bash

SERVICE="nginx"

systemctl is-active --quiet $SERVICE

if [ $? -ne 0 ]; then
  systemctl restart $SERVICE
  echo "$SERVICE restarted"
else
  echo "$SERVICE is running"
fi

