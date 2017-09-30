# -*- mode: ruby -*-
# vi: set ft=ruby :

#Install required plugins
required_plugins = %w( landrush )
required_plugins.each do |plugin|
  system "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.3"
  config.vm.box_check_update = false

  config.vm.network "private_network", type: "dhcp"
  config.landrush.enabled = true
  config.landrush.tld = "vagrant.dev"
  config.landrush.upstream_servers = [[:udp, '8.8.8.8', 53], [:tcp, '8.8.8.8', 53]]

  config.vm.define "test" do |ansible|
    ansible.vm.hostname = "test.vagrant.dev"
  end

  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "512"
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ['modifyvm', :id, '--cableconnected1', 'on']
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    yum install -y epel-release python curl ansible
    curl https://bootstrap.pypa.io/get-pip.py | sudo python
    pip install -U pip
  SHELL
end
