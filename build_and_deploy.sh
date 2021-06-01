#!/bin/bash

echo "build docker image"
docker build -t php-website-edureka:v1.0.0 .

echo "run docker image"
docker run -d -p 8072:80 php-website-edureka:v1.0.0

echo "test curl"
curl_result=$(curl -v http://localhost:8072/ 2>&1)
echo $curl_result
