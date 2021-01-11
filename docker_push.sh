#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
SHA="$(git rev-parse --short HEAD)"
docker tag docker-test htotheo/docker-test:latest
docker tag docker-test htotheo/docker-test:$(SHA)
docker push htotheo/docker-test:latest
docker push htotheo/docker-test:$(SHA)