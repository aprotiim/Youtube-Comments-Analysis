#!/bin/bash
# Log everything to start_docker.log
exec > /home/ubuntu/start_docker.log 2>&1

echo "Logging in to ECR..."
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 613539139859.dkr.ecr.us-east-2.amazonaws.com

echo "Pulling Docker image..."
docker pull 613539139859.dkr.ecr.us-east-2.amazonaws.com/yt-chrome-plugin:latest

echo "Checking for existing container..."
if [ "$(docker ps -q -f name=yt-chrome-plugin)" ]; then
    echo "Stopping existing container..."
    docker stop yt-chrome-plugin
fi

if [ "$(docker ps -aq -f name=yt-chrome-plugin)" ]; then
    echo "Removing existing container..."
    docker rm yt-chrome-plugin
fi

echo "Starting new container..."
docker run -d -p 80:5000 --name yt-chrome-plugin 613539139859.dkr.ecr.us-east-2.amazonaws.com/yt-chrome-plugin:latest

echo "Container started successfully."