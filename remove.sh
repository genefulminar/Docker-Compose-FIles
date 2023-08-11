#!/bin/bash

# Stop and remove all containers
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)

# Remove all Docker images
docker rmi $(docker images -a -q)

# Remove all Docker volumes
docker volume rm $(docker volume ls -q)

# List remaining containers and volumes to verify they are removed
docker ps -a
docker volume ls
