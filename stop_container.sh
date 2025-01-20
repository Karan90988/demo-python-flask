#!/bin/bash
#set -e

# Stop the running container (if any)
#sudo su - root
#docker stop $(ps -a -q)
#docker rm $(ps -a -q)
--------
set -e

# Stop and remove running containers (if any)
CONTAINERS=$(docker ps -q)

if [ -n "$CONTAINERS" ]; then
    echo "Stopping containers: $CONTAINERS"
    docker stop $CONTAINERS
    docker rm $CONTAINERS
else
    echo "No running containers to stop or remove."
fi
