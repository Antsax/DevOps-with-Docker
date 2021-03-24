#!/bin/bash

git clone https://github.com/Antsax/docker-hy.github.io.git
docker build -t antsax/scriptassignment:latest ./docker-hy.github.io/   
docker login
docker push antsax/scriptassignment:latest