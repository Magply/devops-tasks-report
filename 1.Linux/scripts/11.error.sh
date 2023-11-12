#!/bin/bash

# Запросить у пользователя имя файла
echo "Введите имя файла: "
read file_name

# Проверить существование файла
if [[ ! -f $file_name ]]; then
  echo "Файл $file_name не существует."
  exit 1
fi

# Заменить строку error на warning
sed -i 's/error/warning/g' $file_name

