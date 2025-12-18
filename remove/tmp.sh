#rite a script to remove all .tmp files older than 3 days from /tmp.

#!/bin/bash
find /tmp -name "*.tmp" -type f -mtime +3 -exec rm -f {} \;

echo "Old .tmp files removed from /tmp"
