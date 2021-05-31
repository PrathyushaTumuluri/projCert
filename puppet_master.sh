#!/bin/bash

sudo -i puppetserver ca list;
export certname=$(sudo -i echo $(sudo -i puppetserver ca list | grep -o DNS:kslave1.* | sed 's/DNS://' | sed 's/"]//'));
echo $certname;
#sudo -i puppetserver ca sign --certname $certname;
#sudo -i puppetserver ca list -a;
