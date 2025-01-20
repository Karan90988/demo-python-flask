#!/bin/bash
set -e
echo "hello"
# Stop the running container (if any)
sudo su - root
#sudo docker stop ps -a -q
#sudo docker rm $(ps -a -q)
sudo docker stop $(sudo docker ps -a -q)  # Stop all running containers
sudo docker rm $(sudo docker ps -a -q)    # Remove all containers


