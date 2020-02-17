#!/bin/sh

set -e

cd /usr/tools
make prefetch-base
make prefetch-kernel
make prefetch-packages
# Cache all distribution files to avoid spurious rebuilds
make distfiles
