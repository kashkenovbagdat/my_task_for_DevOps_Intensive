#!/bin/bash
SOURCE_DIR="source_directory"
TARGET_DIR="target_directory"
mkdir -p "$TARGET_DIR"
cp "$SOURCE_DIR"/*.txt "$TARGET_DIR"
echo "Список скопированных файлов:"
ls -la "$TARGET_DIR"/*.txt