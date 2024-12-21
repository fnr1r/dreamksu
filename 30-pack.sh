#!/usr/bin/env bash
set -euo pipefail

xz -kze9 dist/Image
mv dist/Image.xz Image.xz
xz -kze9 BOOT.img
