# Ansible

mkdir ab-haproxy
1. Создан Vagrantfile, ansible.cfg и playbook.yaml, в репозитории Galaxy найдены роли и сохранены локально согласно инструкции
2. vagrant up - запущена виртуальная машина - при запуске загружается playbook.yaml
[alt text](./images/Vagrant up ad-haproxy.jpeg)
3. К серверу можно подключится по ssh
[alt text](./images/ssh ad-haproxy.jpeg)
[alt text](./images/haproxy status.jpeg)

в процессе решения задачи была использована подсеть не позволяющая подключится к серверу - ошибка исправлена - прописана нужная сеть.

mkdir ab-logstash
1. Создан Vagrantfile, ansible.cfg и playbook.yaml, в репозитории Galaxy найдены роли и сохранены локально согласно инструкции
2. vagrant up - запущена виртуальная машина - при запуске загружается playbook.yaml
3. К серверу можно подключится по ssh
[alt text](./images/Vagrant ad-logstash ssh.jpeg)
[alt text](./images/logstash status.jpeg)
 
 mkdir ab-webui
1. Создан Vagrantfile, ansible.cfg и playbook.yaml, в репозитории Galaxy найдены роли и сохранены локально согласно инструкции
2. vagrant up - запущена виртуальная машина - при запуске загружается playbook.yaml
3. К серверу можно подключится по ssh
[alt text](./images/ssh ad-webui.jpeg)
[alt text](./images/kibana status.jpeg)


 
В VirtualBox запущены три VM
[alt text](./images/virtualbox ansible.jpeg)

Вебстраница доступна
[alt text](./images/elastic.jpeg)?????




