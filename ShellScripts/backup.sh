#!/bin/bash
# Author: Tanmay Mishra | Roll No: 2601730174

if [ -z "$1" ]; then
 echo "Usage: ./backup.sh <folder>"
 exit 1
fi

if [ ! -d "$1" ]; then
 echo "Error: Folder does not exist"
 exit 1
fi

mkdir -p ~/DeveloperPortfolio_Backups

TIME=$(date +%Y-%m-%d_%H-%M-%S)
FILE="backup_$TIME.tar.gz"

tar -czf ~/DeveloperPortfolio_Backups/"$FILE" -C "$(dirname "$1")" "$(basename "$1")"

if [ $? -eq 0 ]; then
 SIZE=$(du -h ~/DeveloperPortfolio_Backups/"$FILE" | cut -f1)
 echo "Backup successful: $FILE Size: $SIZE"
 echo "$TIME Backup successful: $FILE Size: $SIZE" >> ~/DeveloperPortfolio_Backups/backup.log
else
 echo "Backup failed"
 exit 1
fi
