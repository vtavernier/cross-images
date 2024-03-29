#!/bin/bash -x

set -eu

SOURCE_BASE="$(dirname "$BASH_SOURCE[0]")"
TARGET_NAME="$(basename "$SOURCE_BASE")"
cd "$SOURCE_BASE"
. ../common.sh

# Rust target
TARGET=arm-unknown-linux-gnueabihf

# C test
#  We're using Python for this test
export ENABLE_PYO3=1
test_rust_git \
	"https://github.com/vtavernier/blog-cross-rpi.git@bullseye" \
	"blog-cross-rpi" \
	"--all-features"

# vim: ft=bash:et:ts=2:sw=2
