#!/bin/bash

# Запросить у пользователя имя каталога
echo "Введите имя каталога: "
read directory_name

# Получить список файлов в каталоге
files=$(ls $directory_name)

# Вывести список файлов
echo "Список файлов в каталоге $directory_name:"
echo "$files"
