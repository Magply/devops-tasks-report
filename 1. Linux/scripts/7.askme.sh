#!/bin/bash

# Запросить у пользователя имя файла
echo "Введите имя файла: "
read file_name

# Получить содержимое файла
file_content=$(cat $file_name)

# Вывести содержимое файла
echo -e  "Содержимое файла" $file_name ":\n" $file_content
