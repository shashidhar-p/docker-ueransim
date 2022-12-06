#!/bin/bash
docker tag ueransim:gnb shashidharpatil/ueransim:gnb
docker tag ueransim:ue shashidharpatil/ueransim:ue

docker push shashidharpatil/ueransim:gnb
docker push shashidharpatil/ueransim:ue