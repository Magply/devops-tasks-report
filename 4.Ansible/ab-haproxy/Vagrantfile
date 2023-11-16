4
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

# Configure the virtual machine
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Set the box name
  config.vm.box = "bento/ubuntu-18.04"

  # Set the hostname
  config.vm.hostname = "ab-haproxy"
  config.vm.network "private_network", ip: "172.10.10.10"
 # Set the memory size
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
  end

  # Install the Ansible provisioner
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yaml"
    ansible.verbose = true
  end
end
