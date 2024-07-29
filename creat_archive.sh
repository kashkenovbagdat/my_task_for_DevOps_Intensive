#!/bin/bash
FILES_AND_DIRS="file1.txt file2.txt dir1"
ARCHIVE_NAME="archive.tar.gz"
echo "This is file 1" > file1.txt
echo "This is file 2" > file2.txt
mkdir -p dir1
echo "This is a file in dir1" > dir1/file3.txt
tar -czf "$ARCHIVE_NAME" $FILES_AND_DIRS
if [ $? -eq 0 ]; then
    echo "Архив '$ARCHIVE_NAME' создан успешно."
else
    echo "Ошибка при создании архива."
    exit 1
fi
UNPACK_DIR="unpack_dir"
mkdir -p "$UNPACK_DIR"
if [ $? -eq 0 ]; then
    echo "Архив '$ARCHIVE_NAME' успешно распакован в '$UNPACK_DIR'."
else
    echo "Ошибка при распаковке архива."
    exit 1
fi