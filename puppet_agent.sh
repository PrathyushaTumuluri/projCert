#!/bin/bash

echo "set source";
sudo -i source /etc/profile.d/puppet-agent.sh;

echo "export path";
sudo -i export PATH=/opt/puppetlabs/bin:$PATH;
    
# echo "puppet version";
# sudo -i /opt/puppetlabs/bin/puppet -V;

echo "set config";
sudo -i /opt/puppetlabs/bin/puppet config set server ip-172-31-31-109.ap-south-1.compute.internal --section main;
#sudo -i /opt/puppetlabs/bin/puppet config set dns_alt_names ip-172-31-31-109.ap-south-1.compute.internal,ip-172-31-29-129.ap-south-1.compute.internal --section main;

echo "verify the set config";
sudo -i cat /etc/puppetlabs/puppet/puppet.conf;

echo "run ssl bootstrap";
# sudo -i /opt/puppetlabs/bin/puppet ssl bootstrap &
sudo -i /opt/puppetlabs/bin/puppet ssl bootstrap --waitforcert 0;
