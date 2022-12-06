#!/bin/bash
docker build . -f ./gnb/Dockerfile -t ueransim:gnb
docker build . -f ./ue/Dockerfile -t ueransim:ue
