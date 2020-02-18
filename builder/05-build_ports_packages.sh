#!/bin/sh

set -e

cd /usr/tools
make ports
make rename-kernel
make rename-base
make rename-packages
