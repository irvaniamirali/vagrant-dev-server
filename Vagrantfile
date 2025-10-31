# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # Use Debian 12 box
  config.vm.box = "bento/debian-12"
  
  # Hostname
  config.vm.hostname = "dev-server"

  # Network
  config.vm.network "private_network", ip: "192.168.56.10"

  # Shared folder
  config.vm.synced_folder "./", "/home/vagrant/projects"

  # Resources
  config.vm.provider "virtualbox" do |vb|
    vb.name = "vagrant_dev_server"
    vb.memory = "1024"
    vb.cpus = 1
  end

  # Provisioning with shell script
  config.vm.provision "shell", path: "bootstrap.sh"
end

