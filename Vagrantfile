# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.synced_folder "./ansible", "/home/vagrant/ansible", :mount_options => ["fmode=600"]

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt -y update
    sudo apt -y install python3-pip
    sudo python3 -m pip install ansible
    echo "cd ~/ansible" >> ~/.bashrc
  SHELL
end
