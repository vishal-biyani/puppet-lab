# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

MASTER_MEMORY=2048
AGENT_MEMORY=256
MASTER_INSTANCES=1
AGENT_INSTANCES=1

PUPPET_SUBNET="192.168.17"
PUPPET_MASTER_ADDRESS="192.168.17.99"

DOMAIN_NAME="pagent.vb.com"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

	MASTER_INSTANCES.times do |i|
		config.vm.define "puppet_master" do |pmaster|
			pmaster.vm.box = "centos_6_3_x86_64"
			pmaster.vm.network "private_network", ip: "#{PUPPET_MASTER_ADDRESS}"
			pmaster.vm.hostname = "puppet.learn.com"
			pmaster.vm.provider :virtualbox do |vb|
				vb.customize ["modifyvm", :id, "--memory", MASTER_MEMORY]
			end
			pmaster.vm.provision "shell", path: "scripts/installPuppetMaster.sh"
		end
	end

	AGENT_INSTANCES.times do |i|
		config.vm.define "puppet_agent_#{i}" do |pagent|
			pagent.vm.box = "centos_6_3_x86_64"
			pagent.vm.network "private_network", ip: "#{PUPPET_SUBNET}.#{i+10}"
			pagent.vm.hostname = "#{i}.#{DOMAIN_NAME}"
			pagent.vm.provider :virtualbox do |vba|
				vba.customize ["modifyvm", :id, "--memory", AGENT_MEMORY]
			end
			pagent.vm.provision "shell", path: "scripts/installPuppetAgent.sh"
		end
	end	
end