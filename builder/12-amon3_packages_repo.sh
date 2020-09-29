#!/bin/sh

set -e

source builder.conf

REPO_SRV="repository@castor.eole.lan"
REPO_EXEC_CMD="ssh $REPO_SRV"
REPO_TESTEOLE_PATH="/srv/repository/amon3/pub"
REPO_EOLE_PATH="/srv/nfs/eole/mirrors/amon3/pub"

#$REPO_EXEC_CMD rm -rf $REPO_TESTEOLE_PATH/FreeBSD\:${FREEBSD_VERSION}\:amd64/${OPNSENSE_VERSION}/latest
$REPO_EXEC_CMD mkdir -p {$REPO_TESTEOLE_PATH,$REPO_EOLE_PATH}/FreeBSD\:${FREEBSD_VERSION}\:amd64/${OPNSENSE_VERSION}/{latest,sets}
rsync -e ssh -avz /usr/local/opnsense/build/${OPNSENSE_VERSION}/amd64/sets $REPO_SRV:$REPO_TESTEOLE_PATH/FreeBSD\:${FREEBSD_VERSION}\:amd64/${OPNSENSE_VERSION}/
$REPO_EXEC_CMD tar xvf $REPO_TESTEOLE_PATH/FreeBSD\:${FREEBSD_VERSION}\:amd64/${OPNSENSE_VERSION}/sets/packages-${OPNSENSE_VERSION}*.tar -C $REPO_TESTEOLE_PATH/FreeBSD:${FREEBSD_VERSION}:amd64/${OPNSENSE_VERSION}/latest/
