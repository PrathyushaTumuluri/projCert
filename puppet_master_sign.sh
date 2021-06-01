#!/bin/bash

sleep 60;

echo "get certs list";
sudo -i puppetserver ca list;

echo "export cert name";
export certname=$(sudo -i echo $(sudo -i puppetserver ca list | grep -o kslave1.*.internal));
echo $certname;

echo "sign certificate";
sudo -i puppetserver ca sign --certname $certname;

echo "list signed certs";
sudo -i puppetserver ca list -a;
