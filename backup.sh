#!/bin/bash

# Define source and destination directories
source_dir="/path/to/source/directory"
dest_dir="/path/to/destination/directory"

# Create timestamp for backup folder
timestamp=$(date +"%Y%m%d%H%M%S")
backup_dir="$dest_dir/backup_$timestamp"

# Create backup directory
mkdir -p "$backup_dir"

# Copy files from source to backup directory
cp -R "$source_dir"/* "$backup_dir"

echo "Backup completed successfully. Files are stored in: $backup_dir"

