# Vagrant. Task 3
Автоматизация конфигурации и администрирование виртуальной машины с
помощью Ansible

1. Vagrant init - создан Vagrantfile с настройками виртуальной машины
2. Vagrant up - запуск виртуальной машины
![alt text](./images/status.png)
3. Созданы файлы ansible.cfg, playbook.yml, hosts
4. Vagrant ssh - подключение к виртуальной машине через SSH
![alt text](./images/vagrant ssh.png)

5. Запуск ansible-playbook playbook.yml -i hosts 
![alt text](./images/ansible.png)

6. Vagrant halt, vagrant destroy - остановка и удаление виртуальных машин

ошибки 
 ![alt text](./images/error ssh.png)
 vagrant ssh-config, исправлен путь к ключам в файле hosts
