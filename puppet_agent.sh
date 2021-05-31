#!/bin/bash

# run as sudo
export HISTIGNORE='*sudo -S*';
sudo -S -k -i
#sudo -S -k -i <<< "DevOps12";

# set source
source /etc/profile.d/puppet-agent.sh

# export path
export PATH=/opt/puppetlabs/bin:$PATH
    
# puppet version
/opt/puppetlabs/bin/puppet -V

## set config
#/opt/puppetlabs/bin/puppet config set server puppet --section main

# set config from file
cat ./configfile.txt > /etc/puppetlabs/puppet/puppet.conf
# echo "[main]\nserver = puppet\ndns_alt_names=ip-172-31-31-109.ap-south-1.compute.internal,ip-172-31-29-129.ap-south-1.compute.internal" > /etc/puppetlabs/puppet/puppet.conf

# verify the set config
cat /etc/puppetlabs/puppet/puppet.conf

# # run ssl bootstrap
# /opt/puppetlabs/bin/puppet ssl bootstrap
