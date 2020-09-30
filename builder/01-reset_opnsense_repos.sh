#!/bin/sh

set +e

CURRENT_DIR=$(pwd)

pkg update
pkg install git rsync

# Reset local opnsense git repositories
rm -rf /usr/obj/* /usr/src/* /usr/ports /usr/plugins /usr/core /usr/tools
git clone https://github.com/opnsense/tools.git /usr/tools
cd /usr/tools

# Update all or individual repositories (core, plugins, ports, portsref, src, tools)
make update

cd $CURRENT_DIR
