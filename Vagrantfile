# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"

  config.vm.hostname = "jupyterhub"

  config.vm.network "forwarded_port", guest: 8000, host: 8000

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 8096
    vb.cpus = 2
  end

  config.vm.provision :shell do |s| 
    s.path = "jupyterlab.sh"
  end
end
