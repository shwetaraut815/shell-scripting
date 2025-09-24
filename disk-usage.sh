#!/bin/bash

echo "enter your file name"
read file

timestamp=$(date +%Y-%m-%d_%H-%M-%S)

backup_file=${file}-backup-$timestamp


if cp $file $backup_file ;then
     echo "done!"
else
        echo "try again later"
fi 


