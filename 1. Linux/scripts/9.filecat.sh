#!/bin/bash

# Запросить у пользователя имя файла
echo "Введите имя файла: "
read file_name

# Проверить существование файла
if [[ ! -f $file_name ]]; then
  echo "Файл" $file_name "не существует."
 exit 1
fi

# Получить содержимое файла
file_content=$(cat $file_name)

# Вывести содержимое файла
echo $file_content
