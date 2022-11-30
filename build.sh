#!/bin/bash

echo "Start to build for docker..."

nohup /usr/bin/python3 -m http.server 28292 &
sleep 5

docker build -t rosetta - < Dockerfile
#kill -9 $(netstat -antp | grep :28294 | awk '{print $7}' | awk -F'/' '{ print $1 }')