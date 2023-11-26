# Virtual Machine Management with Vagrant and Ansible

## Task 2.1: Virtual Machine Management with Vagrant

[ 2.1 Detailed README.md ](./v1/README.md)

To complete this task, I installed Vagrant and VirtualBox on my computer. Then I created a new directory for the project and initialized it with the command vagrant init. In the Vagrantfile file, I configured the virtual machine as follows:

```
    Base image: Ubuntu 20.04
    Number of CPU: 2
    Amount of RAM: 2 GB
    Port forwarding: 8080 (for web server)
```

Then I launched the virtual machine with the command vagrant up. I made sure that I could successfully log in to the virtual machine via SSH with the command vagrant ssh.

To complete the task, I shut down and destroyed the virtual machine with the commands vagrant halt and vagrant destroy.

## Task 2.2: Creating a Multi-Component Environment with Vagrant and VirtualBox

[ 2.2 Detailed README.md ](./v2/README.md)

To complete this task, I created a new directory for the project and initialized it with the command vagrant init. Then I added the following virtual machines to the Vagrantfile file:

```
    A virtual machine with the base image Ubuntu 20.04 for the web server
    A virtual machine with the base image Ubuntu 20.04 for the database
    A virtual machine with the base image Ubuntu 20.04 for the application
```

For each virtual machine, I configured the following parameters:

```
    Number of CPU: 1
    Amount of RAM: 1 GB
    Port forwarding:
        Virtual machine for the web server: 8080
        Virtual machine for the database: 3306
        Virtual machine for the application: 8081
```

After that, I launched all virtual machines with the command vagrant up. I made sure that they were correctly configured and could interact with each other.

To complete the task, I interacted with the virtual machines via SSH and tested their functionality.

## Task 2.3: Automating Configuration and Administration of a Virtual Machine with Ansible

[ 2.3 Detailed README.md ](./v3/README.md)

To complete this task, I followed these steps:

* Created a new directory for the project and initialized it with the command vagrant init.
* In the Vagrantfile file, I configured a virtual machine with the base image Ubuntu 20.04 (2 CPU, 2 GB RAM).
* Launched the virtual machine with the command vagrant up.
* Installed Ansible on my local computer.
* Created a file ansible.cfg and configured it to use the virtual machine.
* Wrote an Ansible playbook playbook.yml with the following tasks:
* * Update packages on the virtual machine
* * Install and configure the Apache web server
* * Create a user account and install an SSH key for authentication
* Launched the Ansible playbook with the command ansible-playbook playbook.yml.
* Added the following tasks to the Ansible playbook:
* * Create a text file with the time of its creation
* * Install additional software (Nginx, Apache2, etc)
* * Create a schedule using cron to perform a task (regularly cleaning temporary files)

To complete the task, I checked that all tasks were completed successfully.

## Conclusions

In the course of completing the tasks, I acquired the following skills:
* Configuring virtual machines with Vagrant and VirtualBox
* Creating a multi-component environment with Vagrant and VirtualBox
* Automating the configuration and administration of virtual machines with Ansible
