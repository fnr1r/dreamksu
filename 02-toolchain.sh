#!/usr/bin/env bash
set -euo pipefail

. 00-shared.sh

export KERNEL_DIR="$REPO_DIR/android_kernel_samsung_universal8895"
export TOOLCHAINS_DIR="$REPO_DIR/toolchains"

export GCC_PATH="$TOOLCHAINS_DIR/aarch64-linux-android-4.9"
export LLVM_PATH="$TOOLCHAINS_DIR/linux-x86/clang-r416183b1"

export VERSION_NAME="-fnrir-los-ksu"
export _CFG=exynos8895-dreamlte_defconfig

export PATH="$LLVM_PATH/bin:$GCC_PATH/bin:$PATH"
export LD_LIBRARY_PATH="$GCC_PATH/lib"

export CC=clang
export NM=llvm-nm
export OBJCOPY=llvm-objcopy
export LD=ld.gold

export ARCH=arm64
#export SUBARCH=arm
export CROSS_COMPILE=aarch64-linux-android-
export CLANG_TRIPLE=aarch64-linux-gnu-

export DEFCONFIG=$_CFG
