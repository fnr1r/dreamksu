#!/usr/bin/env bash
set -euo pipefail

. 02-toolchain.sh

zcd "$KERNEL_DIR"

echo "#### make -j8 ####"
nice make -j"$THREADS"

zcdb

if [[ ! -d dist ]]; then
    ln -s android_kernel_samsung_universal8895/arch/arm64/boot dist
fi
