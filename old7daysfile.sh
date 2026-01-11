#!/bin/bash

## We used shell scripts to clean old logs automatically to save disk space and compress it

log_dir="/var/log/jenkins"
move="/tmp/jenkins-log"

mkdir -p "$move"

find "$log_dir" -type f -name "*.log" -mtime +7 -exec gzip {} \; -exec mv {}.gz "$move" \;

echo "7 days old logs compressed and moved to $move"


### simple one

#!/bin/bash

LOG_DIR="/var/log/myapp"

find $LOG_DIR -type f -mtime +7 -delete

echo "Old logs cleaned"
