#!/bin/bash
file_count=0
dir_count=0
for item in *; do
    if [ -d "$item" ]; then
        # Если это директория
        ((dir_count++))
    elif [ -f "$item" ]; then
        # Если это файл
        ((file_count++))
    fi
done
echo "Количество файлов: $file_count"
echo "Количество директорий: $dir_count"