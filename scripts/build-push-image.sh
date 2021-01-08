#!/bin/bash
set -e

DOCKER_IMAGE="$1"
DOCKER_TAG="$2"
DOCKER_IMAGE_WITH_TAG="${DOCKER_IMAGE}:${DOCKER_TAG}"

echo "Login to Docker Hub"
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
echo "Build container image"
docker build . -t "${DOCKER_IMAGE_WITH_TAG}" 
echo "Pushing container image ${DOCKER_IMAGE_WITH_TAG} to Docker Hub"
docker push "${DOCKER_IMAGE_WITH_TAG}"
