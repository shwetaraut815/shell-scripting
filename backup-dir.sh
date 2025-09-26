#!/bin/bash

# Input file
file=$1

# Backup directory
backup_dir="/tmp/backup"
mkdir -p "$backup_dir"

# Timestamp
timestamp=$(date +%Y%m%d_%H%M%S)

# Backup file name
backup_file_name="$(basename "$file")-$timestamp"

# Check if file exists
if [ -f "$file" ]; then
    cp "$file" "$backup_dir/$backup_file_name"
    echo "Backup created: $backup_dir/$backup_file_name"
else
    echo "Error: File '$file' does not exist."
fi

