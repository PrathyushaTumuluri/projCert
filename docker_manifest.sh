#!/bin/bash

# echo "cd to puppet modules...";
# cd /etc/puppetlabs/code/environments/production/modules;

# echo "present working directory:";
# pwd;

# sudo /opt/puppetlabs/bin/puppet module install garethr-docker

echo "install garethr-docker module...";
sudo /opt/puppetlabs/bin/puppet module install garethr-docker;

# cd /etc/puppetlabs/code/environments/production/manifests

echo "create manifest file...";
sudo touch /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;

sudo chmod 777 /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;

echo "add code to manifest file...";
sudo -i cat ./puppet_docker_class.txt > /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;

echo "verify manifest file...";
sudo cat /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;
