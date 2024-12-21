#!/usr/bin/env bash
set -euo pipefail

. 02-toolchain.sh

zcd "$KERNEL_DIR"

echo "#### make clean ####"
make clean
echo "#### make mrproper ####"
make mrproper

zcdb
