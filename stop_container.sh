#!/bin/bash
#set -e

# Stop the running container (if any)
#sudo su - root
#sudo docker stop $(ps -a -q)
#sudo docker rm $(ps -a -q)
--------
#!/bin/bash
set -e

# Stop and remove Docker containers (if any)
CONTAINERS=$(sudo docker ps -a -q)

if [ -n "$CONTAINERS" ]; then
    echo "Stopping containers: $CONTAINERS"
    sudo docker stop $CONTAINERS
    echo "Removing containers: $CONTAINERS"
    sudo docker rm $CONTAINERS
else
    echo "No running containers to stop or remove."
fi

