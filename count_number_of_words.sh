#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Использование: $0 <путь_к_файлу>"
    exit 1
fi
file_path="$1"
if [ ! -f "$file_path" ]; then
    echo "Ошибка: файл '$file_path' не найден."
    exit 1
fi
word_count=$(wc -w < "$file_path")
echo "Количество слов в файле '$file_path': $word_count"