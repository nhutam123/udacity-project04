#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=tamln2/my-project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
sudo docker login -u tamln2
sudo docker tag my-project $dockerpath:lastest

# Step 3:
# Push image to a docker repository

sudo docker push $dockerpath:lastest
