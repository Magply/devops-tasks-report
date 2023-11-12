/Desktop/Vagrant/v1

sudo apt install git curl
sudo apt install virtualbox


wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install vagrant

vagrant --version

vagrant init

Vagrant.configure("2") do |config|

  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/focal64"

    ubuntu.vm.provider "virtualbox" do |v|
      v.cpus = 2
      v.memory = 4096
    end
    ubuntu.vm.network "public_network"
    ubuntu.vm.network "forwarded_port", guest: 22, host: 2222
  end
end

vagrant up

vagrant ssh

vagrant halt

vagrant destroy