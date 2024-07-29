#!/bin/bash
KEYWORD="ключевое_слово"
echo "Поиск файлов, содержащих слово '$KEYWORD':"
grep -rl "$KEYWORD" .
if [ $? -eq 0 ]; then
    echo "Список найденных файлов:"
    grep -rl "$KEYWORD" .
else
    echo "Файлы, содержащие слово '$KEYWORD', не найдены."
fi