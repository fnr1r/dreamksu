#!/usr/bin/env bash
set -euo pipefail

. 02-toolchain.sh

zcd "$KERNEL_DIR"

echo "#### make $_CFG ####"
make $_CFG

set -x
# Enable KSU in config
./scripts/config --file .config -e CONFIG_OVERLAY_FS
make olddefconfig
./scripts/config --file .config -e CONFIG_KSU
./scripts/config --file .config -d CONFIG_KSU_DEBUG
./scripts/config --file .config --set-str CONFIG_LOCALVERSION "$VERSION_NAME"
./scripts/config --file .config -d CONFIG_LOCALVERSION_AUTO
set +x

echo "#### make olddefconfig ####"
make olddefconfig

zcdb
