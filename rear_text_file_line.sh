#!/bin/bash
TEXT_FILE="example.txt"
echo "Первая строка текста" > $TEXT_FILE
echo "Вторая строка текста" >> $TEXT_FILE
echo "Третья строка текста" >> $TEXT_FILE
echo "Четвертая строка текста" >> $TEXT_FILE
echo "Пятая строка текста" >> $TEXT_FILE
if [ ! -f "$TEXT_FILE" ]; then
    echo "Ошибка: не удалось создать файл $TEXT_FILE."
    exit 1
fi
echo "Строки файла в обратном порядке:"
while IFS= read -r line; do
    echo "$line" | rev
done < "$TEXT_FILE"