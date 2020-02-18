#!/bin/sh

set -e

cd /usr/tools
make ports
make rename-kernel
make rename-base
make rename-packages
make sign-kernel
make sign-base
make sign-packages
