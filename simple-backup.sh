#!/bin/bash

SOURCE_DIR="/var/www/html"
BACKUP_DIR="/backup"

DATE=$(date +%F)

tar -czf $BACKUP_DIR/backup-$DATE.tar.gz $SOURCE_DIR

echo "Backup completed for $DATE"
