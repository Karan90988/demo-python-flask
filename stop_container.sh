#!/bin/bash
set -e

# Stop the running container (if any)
sudo su - root
docker stop $(ps -a -q)
docker rm $(ps -a -q)