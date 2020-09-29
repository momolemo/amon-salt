#!/bin/sh

set +e

pkg update
pkg install git rsync
cd /usr

# Reset local opnsense git repositories
rm -rf local/* obj/* src/* ports plugins core tools
git clone https://github.com/opnsense/tools.git
cd tools

# Update all or individual repositories (core, plugins, ports, portsref, src, tools)
make update
