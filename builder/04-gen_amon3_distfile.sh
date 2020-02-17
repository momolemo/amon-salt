#!/bin/sh

set -e

cd /usr/amon3
# Generate amon3 tarball source files required to build amon-3.0 port
tar czvf /usr/ports/distfiles/amon-3.0.tar.gz amon-3.0
# FIXME : UPLOAD TO MASTER_SITES
