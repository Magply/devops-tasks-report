# Vagrant. Task 2
Создание многокомпонентного окружения с использованием Vagrant и
VirtualBox

1. Vagrant init - создан Vagrantfile с настройками виртуальной машины
2. Созданы скрипты установки для каждой виртуальной машины (scripts1.sh и scripts2.sh), которые выполняются при их создании
 
3. Vagrant up - запуск виртуальных машин
![alt text](./images/status.png)
4. vagrant ssh server1, vagrant ssh server2 - VM имеют доступ в интернет, имеют доступ друг к другу
![alt text](./images/ssh server1.png)
![alt text](./images/ssh server2.png)
5. Vagrant halt, vagrant destroy - остановка и удаление виртуальной машины


