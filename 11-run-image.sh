#!/usr/bin/env bash
set -euo pipefail

. 01-docker.sh

docker run -it --rm \
    -v ".:/app" \
    "$CONTAINER_NAME" \
    "$@"
