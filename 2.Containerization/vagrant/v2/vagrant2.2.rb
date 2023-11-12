Задача 2.2: Создание многокомпонентного окружения с использованием Vagrant и
VirtualBox

Выполнена команда vagrant init
Создан файл Vagrantfile
Созданы две виртуальные машины: 

Vagrant.configure("2") do |config|

    config.vm.define "server1" do |server1|
        server1.vm.box = "ubuntu/focal64"

    server1.vm.provider "virtualbox" do |v|
    v.cpus = 2
    v.memory = 2048
        end
        #server1.vm.network "forwarded_port", guest: 80, host: 8081, host_ip: "192.168.0.101"    
        server1.vm.network "public_network", bridge: "wlo1"
        server1.vm.provision "shell", path: "scripts1.sh"
        end

    config.vm.define "server2" do |server2|
    server2.vm.box = "ubuntu/focal64"
        server2.vm.provider "virtualbox" do |v|
    v.cpus = 2
    v.memory = 2048
    end 

        #server2.vm.network "forwarded_port", guest: 80, host: 8082, host_ip: "192.168.0.102"
        server2.vm.network "public_network", bridge: "wlo1"     
        server2.vm.provision "shell", path: "scripts2.sh"
  end
end


Cеть yастроена, чтобы виртуальные машины могли взаимодействовать друг с другом внутри виртуальной сети, а также имели доступ к
интернету через NAT


Созданы скрипты установки (Bash-скрипты) для каждой виртуальной машины (scripts1.sh и scripts2.sh), которые выполняются при их создании.

Запущены обе виртуальные машины - vagrant up.



VM корректно настроены и могут взаимодействовать друг с другом.
Вход в каждую виртуальную машину через SSH с помощью vagrant ssh server1 и vagrant ssh server2 прошел успешно.
VM пингуют друг друга успешно (ping 192.168.0.15, ping 192.168.0.222)
VM имеют доступ в интеренет

Произведено выключение и уничтожение: Выполнены команды vagrant halt для выключения
виртуальнх машин и vagrant destroy для их удаления