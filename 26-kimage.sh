#!/usr/bin/env bash
set -euo pipefail

. 02-toolchain.sh

STOCK_DIR="$REPO_DIR/stock"

mkbootimg \
    --kernel dist/Image \
    --ramdisk "$STOCK_DIR"/BOOT.img-ramdisk \
    --dt "$STOCK_DIR"/BOOT.img-dt \
    --cmdline "$(cat "$STOCK_DIR"/BOOT.img-cmdline)" \
    --base "$(cat "$STOCK_DIR"/BOOT.img-base)" \
    --kernel_offset "$(cat "$STOCK_DIR"/BOOT.img-kernel_offset)" \
    --ramdisk_offset "$(cat "$STOCK_DIR"/BOOT.img-ramdisk_offset)" \
    --second_offset "$(cat "$STOCK_DIR"/BOOT.img-second_offset)" \
    --tags_offset "$(cat "$STOCK_DIR"/BOOT.img-tags_offset)" \
    --os_version "$(cat "$STOCK_DIR"/BOOT.img-os_version)" \
    --os_patch_level "$(cat "$STOCK_DIR"/BOOT.img-os_patch_level)" \
    --board "$(cat "$STOCK_DIR"/BOOT.img-board)" \
    --pagesize "$(cat "$STOCK_DIR"/BOOT.img-pagesize)" \
    --hashtype "$(cat "$STOCK_DIR"/BOOT.img-hashtype)" \
    -o BOOT.img
