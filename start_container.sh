#!/bin/bash
set -e
sudo su - root
# Pull the Docker image from Docker Hub
docker pull karan90988/demo-python-flask:latest
# Run the Docker image as a container
docker run -d -p 5000:5000 karan90988/demo-python-flask:latest