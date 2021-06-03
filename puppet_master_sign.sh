#!/bin/bash

#sleep 60;

echo "get certs list";
sudo -i puppetserver ca list;

echo "cert data:";
export certdata=$(sudo -i puppetserver ca list 2>&1);
echo $certdata;

echo "export cert name";
export certname=$(sudo -i echo $(sudo -i puppetserver ca list | grep -o kslave1.*.internal));
echo $certname;

if grep -q "No certificates to list" <<< $certdata; then
  echo "No certificates to sign...";
else
  echo "sign certificate";
  sudo -i puppetserver ca sign --certname $certname;
fi

# if grep -q "No" <<< $certname; then
# echo "No certificates to sign..";
# else
# echo "sign certificate...";
# sudo -i puppetserver ca sign --certname $certname;
# fi

# if [ echo $certname == *"No certificates to list"* ]; then
# echo "No certificates to sign...";
# else
# echo "Sign certificate...";
# sudo -i puppetserver ca sign --certname $certname;
# fi

echo "list signed certs";
sudo -i puppetserver ca list -a;
