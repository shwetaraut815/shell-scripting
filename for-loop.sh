# check disk usage of directories

#!/bin/bash

directory=("/var" "/etc" "/home")

for dir in "${directory[@]}"; 
 do 
   echo "========"
   du -sh "$dir"
 done


