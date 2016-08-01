# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/centos-6.7"
  config.vm.boot_timeout = 360

  machines = {
    'card-board' => '192.168.40.12',
  }

  machines.each do |name, ip|
    config.vm.define name do |host|
      host.vm.hostname = "#{name}.dev"
      host.vm.network "private_network", ip: ip
      host.vm.network :forwarded_port, guest: 80, host: 80
    end
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision 'ansible' do |ansible|
    ansible.playbook = 'ansible-vagrant/playbook.yml'
    ansible.sudo = true
    ansible.verbose = 'vvvv'
    ansible.extra_vars = {
      machines: machines,
    }
  end
end
