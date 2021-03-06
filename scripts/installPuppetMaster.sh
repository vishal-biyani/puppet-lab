sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
sudo yum -y install puppetserver
sudo cp /vagrant/conf/puppet.conf /etc/puppet/puppet.conf
sudo echo "192.168.17.99 puppet.learn.com puppet puppetmaster" >> /etc/hosts
sudo iptables -A INPUT -p tcp --dport 8140 -m state --state NEW -j ACCEPT
sudo service iptables save
sudo iptables -F
sudo service iptables save
sudo service puppetserver start
sudo cp /vagrant/puppet_data/site.pp /etc/puppet/manifests
sudo echo "*" > /etc/puppet/autosign.conf 
sudo cp -r /vagrant/puppet_data/modules/sudo /etc/puppet/modules