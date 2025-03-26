#!/bin/bash

echo "Hello!"

echo "Start to build for docker..."

docker run -d \
    -v $PWD:/web \
    -p 8080:8080 \
    halverneus/static-file-server:latest

docker build -t rosetta - < Dockerfile
#kill -9 $(netstat -antp | grep :28294 | awk '{print $7}' | awk -F'/' '{ print $1 }')

