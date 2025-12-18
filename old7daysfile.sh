#!/bin/bash

log_dir="/var/log/jenkins"
move="/tmp/jenkins-log"

mkdir -p "$move"

find "$log_dir" -type f -name "*.log" -mtime +7 -exec gzip {} \; -exec mv {}.gz "$move" \;

echo "7 days old logs compressed and moved to $move"
