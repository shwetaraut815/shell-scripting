#!/bin/bash

file=$1

archive=/tmp

find "$file" -type f -size +1k | while read file;
do
     gzip -c "$file" > "$archive/$(basename $file).gz"
done
echo "complete!!!!!!!!"

