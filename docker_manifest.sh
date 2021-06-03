#!/bin/bash

echo "cd to puppet modules...";
sudo cd /etc/puppetlabs/code/environments/production/modules;

# sudo /opt/puppetlabs/bin/puppet module install garethr-docker

echo "install garethr-docker module...";
sudo /opt/puppetlabs/bin/puppet module install garethr-docker --version 19.03.6;

# cd /etc/puppetlabs/code/environments/production/manifests

echo "create manifest file...";
touch /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;

echo "add code to manifest file...";
cat ./puppet_docker_class.txt > /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;

echo "verify manifest file...";
/etc/puppetlabs/code/environments/production/manifests/installdocker.pp;
