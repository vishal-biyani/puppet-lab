sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
sudo yum -y install puppet
sudo cp /vagrant/conf/puppet.conf /etc/puppet/puppet.conf
sudo echo "192.168.17.99 puppet.learn.com puppet puppetmaster" >> /etc/hosts
sudo iptables -F
sudo service iptables save
sudo puppet agent -t