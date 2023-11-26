# These files contain sample bash scripts that you can use to perform various tasks.

## 1.yesno.sh.

This script checks if the current user is root.

```
#!/bin/bash
USER=$(whoami)
if [ ${USER} = root ]
then
echo "yes, user is root"
else
echo "no, user is not root"
fi
```

## 2.time.sh.

This script gets the current date and time and displays it on the screen.
```
#!/bin/bash

# Get the current date and time
date_time=$(date +"%Y-%m-%d %H:%M:%S")

# Get the current date and time
echo "$date_time"
```

## 3.dirin.sh.
This script creates a new directory and navigates to it.

```
#!/bin/bash

# Create a new directory
mkdir my_new_dir

# Go to the directory
cd my_new_dir
```

## 4.copy.sh.

This script copies a file from one directory to another.

```
#!/bin/bash

cp /home/pp/my_file.txt /tmp/my_file.txt
```

## 5.del.sh.

This script deletes the file.

```
#!/bin/bash

# Get the full path to the file
file_path=$(readlink -f ~/my_file.txt)

# Delete the file
rm $file_path
```

## 6.lookfile.sh.

This script gets a list of files in the current working directory and displays it.

```
#!/bin/bash

# Get a list of files in the ~/ directory
files=$(ls ~/)

# Print the list of files
echo $files
```

## 7.askme.sh.

This script asks the user for the name of a file and then displays its contents.

```
#!/bin/bash

# Ask the user for a file name
echo "Enter file name: "
read file_name

# Get the contents of the file
file_content=$(cat $file_name)

# Output the contents of the file
echo -e "File contents" $file_name ":\n" $file_content
```

## 8.askdir.sh.

This script asks the user for the name of a directory, and then displays a list of files in that directory.

```
#!/bin/bash

# Ask the user for a directory name
echo "Enter directory name: "
read directory_name

# Get a list of files in the directory
files=$(ls $directory_name)

# Get a list of files
echo "List of files in directory $directory_name:"
echo "$files"
```

## 9.filecat.sh.

This script asks the user for the name of a file, and then displays its contents on the screen. If the file does not exist, the script

```
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

```

## 10.dirfile.sh.

This script asks the user for the name of a directory, and then outputs a list of files in that directory.

```
#!/bin/bash

# Ask the user for a directory name
echo "Enter directory name: "
read directory_name

# Check if the directory exists
if [[ ! -d $directory_name ]]; then
  echo "Directory ${directory_name} does not exist."
  exit 1
fi

# Get a list of files in the directory
files=$(ls $directory_name)

# Get a list of files
echo "List of files in directory ${directory_name}:"
echo $files
```

## 11.error.sh.

This script asks the user for a file name, and then replaces the "error" line with "warning" in that file.

```
#!/bin/bash

# Prompt the user for a filename
echo "Enter file name: "
read file_name

# Check if the file exists
if [[ ! -f $file_name ]]; then
  echo "File $file_name does not exist."
  exit 1
fi

# Replace error with warning
sed -i 's/error/warning/g' $file_name
```