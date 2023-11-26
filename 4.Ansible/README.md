# Ansible

mkdir ab-haproxy
1. Создан Vagrantfile, ansible.cfg и playbook.yaml, в репозитории Galaxy найдены роли и сохранены локально согласно инструкции
2. vagrant up - запущена виртуальная машина - при запуске загружается playbook.yaml
[alt text](./images/Vagrant up_ad-haproxy.png)
3. К серверу можно подключится по ssh
![alt text](./images/ssh_ad-haproxy.png)
![alt text](./images/haproxy_status.png)

в процессе решения задачи была использована подсеть не позволяющая подключится к серверу - ошибка исправлена - прописана нужная сеть.

mkdir ab-logstash
1. Создан Vagrantfile, ansible.cfg и playbook.yaml, в репозитории Galaxy найдены роли и сохранены локально согласно инструкции
2. vagrant up - запущена виртуальная машина - при запуске загружается playbook.yaml
3. К серверу можно подключится по ssh
![alt text](./images/Vagrant_ad-logstash_ssh.png)
![alt text](./images/logstash_status.png)
 
 mkdir ab-webui
1. Создан Vagrantfile, ansible.cfg и playbook.yaml, в репозитории Galaxy найдены роли и сохранены локально согласно инструкции
2. vagrant up - запущена виртуальная машина - при запуске загружается playbook.yaml
3. К серверу можно подключится по ssh
![alt text](./images/ssh_ad-webui.png)
![alt text](./images/kibana_status.png)

В VirtualBox запущены три VM
![alt text](./images/virtualbox_ansible.png)

Вебстраница доступна
![alt text](./images/elastic.png)?????
