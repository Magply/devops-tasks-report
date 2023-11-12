#!/bin/bash

# Получить полный путь к файлу
file_path=$(readlink -f ~/my_file.txt)

# Удалить файл
rm $file_path
