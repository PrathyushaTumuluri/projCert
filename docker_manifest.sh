#!/bin/bash

echo "cd to puppet modules...";
cd /etc/puppetlabs/code/environments/production/modules;

echo "present working directory:";
pwd;

# sudo /opt/puppetlabs/bin/puppet module install garethr-docker

echo "install garethr-docker module...";
sudo /opt/puppetlabs/bin/puppet module install garethr-docker --version 19;

# cd /etc/puppetlabs/code/environments/production/manifests

echo "create manifest file...";
touch /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;

echo "add code to manifest file...";
sudo cat ./puppet_docker_class.txt > /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;

echo "verify manifest file...";
sudo cat /etc/puppetlabs/code/environments/production/manifests/installdocker.pp;
