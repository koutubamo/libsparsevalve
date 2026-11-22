#!/usr/bin/env bash
set -e
REPO="koutubamo/libsparsevalve"
LIB="seasoned-channel.a"
URL="https://github.com/${REPO}/releases/download/golden-anchor-golden-ember/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
