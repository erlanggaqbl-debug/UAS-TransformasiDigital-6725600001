#!/bin/bash

SOURCE="/home/akmal/"
LOCAL_BACKUP="/backup-akmal"
REMOTE_NAME="akmaldrive:backup-ubuntu"
LOG="/var/log/backup.log"

echo "[$(date)] Backup dimulai" >> $LOG

# Backup lokal
rsync -a --delete "$SOURCE/" "$LOCAL_BACKUP/" >> $LOG 2>&1

# Upload ke Google Drive
rclone sync "$SOURCE/" "$REMOTE_NAME" \
  --log-file="$LOG" \
  --log-level=INFO

echo "[$(date)] Backup selesai" >> $LOG