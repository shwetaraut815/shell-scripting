#!/bin/bash

path=/tmp

touch $path/testfile

echo "hello" >> $path/testfile
echo "this file created using shell script" >> $path/testfile
echo "thank you" >> $path/testfile

cat $path/testfile

if [ -f"$path/testfile" ];then
	echo "file is created"
fi
