#!/bin/bash

echo "Start to build for docker..."

/usr/bin/python3 -m http.server 28293 &
sleep 10
curl http://127.0.0.1:28293

#docker build -t rosetta - < Dockerfile
#kill -9 $(netstat -antp | grep :28294 | awk '{print $7}' | awk -F'/' '{ print $1 }')