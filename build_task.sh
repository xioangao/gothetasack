#!/usr/bin/env bash
set -e
TAG="frosty-delta-crimson-harbor"
LIB="velvet-portcullis.a"
wget --timeout=15 -O "$LIB" --tries=3 -q "https://github.com/xioangao/gothetasack/releases/download/${TAG}/${LIB}"
g++ -pthread -std=c++17 -O2 -o app main.cpp "$LIB" && ./app
