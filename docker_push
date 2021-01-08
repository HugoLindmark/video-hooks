#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker tag docker-test htotheo/docker-test:latest
docker push htotheo/docker-test