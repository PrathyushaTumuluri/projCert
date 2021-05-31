#!/bin/bash

sleep 10;

echo "get certs list";
sudo -i puppetserver ca list;

echo "export cert name";
export certname=$(sudo -i echo $(sudo -i puppetserver ca list | grep -o DNS:kslave1.* | sed 's/DNS://' | sed 's/"]//'));
echo $certname;

echo "sign certificate";
sudo -i puppetserver ca sign --certname $certname;

echo "list signed certs";
sudo -i puppetserver ca list -a;
