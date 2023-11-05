#!/bin/bash

[ -x "$0" ] || chmod +x "$0"

if [ -n "$KERNEL_MAKE_FLAGS" ]; then
  "$PATH_OVERRIDE_SOONG" "$KERNEL_MAKE_CMD" "$KERNEL_MAKE_FLAGS" -C "$TARGET_KERNEL_HEADERS" O="$KERNEL_BUILD_OUT_PREFIX$genDir" ARCH="$KERNEL_ARCH" "$KERNEL_CROSS_COMPILE" headers_install
else
  exit 0
fi

