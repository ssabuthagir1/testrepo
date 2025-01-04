#!/bin/bash

docker login -u $DOCKER_USERNAME -p $DOCKER_PASS docker.io
docker build -t jenweb .
docker tag jenweb:latest shaikabuthagirs/ngi:jenweb
docker push shaikabuthagirs/ngi:jenweb
docker rmi -f jenweb
docker pull shaikabuthagirs/ngi:jenweb
docker run -itd --jenwebsrv -p "8081:80" jenweb

