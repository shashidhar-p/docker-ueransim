# Dockerized-UERANSIM

It offers a dockerized version of UERANSIM simulator.

## Pre-requisites

1. docker
2. docker-compose

## Setup

1. UERANSIM config files are located at /config folder.
2. Use the environment variable "CONFIG" in the docker-compose file to point to the config files.(default: magma5gc-gnb.yaml, magma5gc-ue.yaml)
3. Bring up the containers
   - GNB:

   ```bash
   docker-compose up gnb
   ```

   - UE:

   ```bash
   docker-compose up ue
   ```

   Note: By default the images are pulled from shashidharpatil/ueransim docker repository.
