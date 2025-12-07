##Write a bash script to automate daily database backups and restore verification for an pgsql db

## DAILY BACKUP SCRIPT
#!/bin/bash

# Take backup of PostgreSQL DB in the simplest way

DB_NAME="mydb"
BACKUP_DIR="/opt/pg_backups"

mkdir -p $BACKUP_DIR

FILE="$BACKUP_DIR/${DB_NAME}_$(date +"%Y-%m-%d").sql"

pg_dump $DB_NAME > $FILE

echo "Backup created: $FILE"


##RESTORE SCRIPT
#!/bin/bash

# Restore a backup into PostgreSQL

DB_NAME="mydb"
BACKUP_FILE="/opt/pg_backups/mydb_2025-11-24.sql"   # change this to the file you want

psql $DB_NAME < $BACKUP_FILE

echo "Restore completed from $BACKUP_FILE"

##crontab -e
##0 2 * * * /path/to/backup.sh
