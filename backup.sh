#!/bin/bash
DIRS_TO_BACKUP="/path/to/dir1 /path/to/dir2"
BACKUP_DIR="/path/to/backup_directory"
CURRENT_DATE=$(date +%Y-%m-%d)
ARCHIVE_NAME="backup_$CURRENT_DATE.tar.gz"
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" $DIRS_TO_BACKUP
if [ $? -eq 0 ]; then
    echo "Резервная копия успешно создана: $BACKUP_DIR/$ARCHIVE_NAME"
else
    echo "Ошибка при создании резервной копии."
    exit 1
fi
