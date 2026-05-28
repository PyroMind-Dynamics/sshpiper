#!/usr/bin/env bash

VERSION="v0.0.1"
IMAGE="pyrominddynamics/sshpiper:${VERSION}"

sudo nerdctl build -t "${IMAGE}" --build-arg BUILDTAGS=full --build-arg VER="${VERSION}" .
sudo nerdctl push "${IMAGE}"