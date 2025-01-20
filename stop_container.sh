#!/bin/bash
#set -e

# Stop the running container (if any)
#sudo su - root
#sudo docker stop $(ps -a -q)
#sudo docker rm $(ps -a -q)
--------
#!/bin/bash
set -e

# Retrieve the IDs of all containers (both running and stopped)
ALL_CONTAINERS=$(sudo docker ps -a -q)

if [ -n "$ALL_CONTAINERS" ]; then
    echo "Stopping and removing containers: $ALL_CONTAINERS"
    # Stop all running containers
    sudo docker stop $ALL_CONTAINERS || true
    # Remove all containers
    sudo docker rm $ALL_CONTAINERS || true
else
    echo "No containers to stop or remove."
fi


