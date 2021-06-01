#!/bin/bash

echo "build docker image"
sudo docker build -t php-website-edureka:v1.0.0 .

echo "run docker image"
sudo docker run -d -p 8092:80 php-website-edureka:v1.0.0

# echo "test curl"
# curl_result=$(sudo curl -v http://kslave1:8092/ 2>&1)
# echo $curl_result
