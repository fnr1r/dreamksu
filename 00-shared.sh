#!/usr/bin/env bash
set -euo pipefail

export NAME="dreamksu"

REPO_DIR="$(realpath "$(dirname "$0")")"
export REPO_DIR

THREADS="$(nproc --all)"
export THREADS

zcd() {
    pushd "$1" > /dev/null
}

mkzcd() {
    mkdir -p "$1"
    zcd "$1"
}

zcdb() {
    popd > /dev/null
}
