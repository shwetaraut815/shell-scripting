#Make shell script :Gather access logs of httpd in one file and push it into s3 bucket, append data , and schedule this via cronjob daily at 9 am

LOG_DIR="/var/log/httpd"                  # Apache log directory
ACCESS_LOG="$LOG_DIR/access_log"          # Main access log
TMP_LOG="/tmp/httpd_access_logs_$(date +%F).log"   # Temp file for today's logs
S3_BUCKET="s3://backup-log-3836/httpd-logs"       # Replace with your bucket

aws s3 mb s3://backup-log-3836

cat "$ACCESS_LOG" >> "$TMP_LOG"

aws s3 cp "$TMP_LOG" "$S3_BUCKET/$(date +%F)_access.log"


