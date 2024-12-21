#!/usr/bin/env bash
set -euo pipefail

. 01-docker.sh

docker build -t "$CONTAINER_NAME" builder
