#!/bin/bash

docker login -u $DOCKER_USERNAME -p $DOCKER_PASS docker.io
docker build -t testweb2 .
docker tag testweb2:latest shaikabuthagirs/ngi:testweb2
docker push shaikabuthagirs/ngi:testweb2
docker rmi -f testweb2
docker pull shaikabuthagirs/ngi:testweb2
docker run -itd --name testwebsrv -p "8081:80" testweb2

