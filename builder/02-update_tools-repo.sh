#!/bin/sh

set +e

. $(dirname $0)/builder.conf

# Generate Amon3 repository sign keys
# FIXME : IMPORT KEYS
if [ ! -f /root/repo${OPNSENSE_VERSION}.key ]
then
    openssl genrsa -out /root/repo${OPNSENSE_VERSION}.key 4096
    chmod 0400 /root/repo${OPNSENSE_VERSION}.key
    openssl rsa -in /root/repo${OPNSENSE_VERSION}.key -out /root/repo${OPNSENSE_VERSION}.pub -pubout
    ## FIXME  : SAVE KEYS !!!!
fi

# Merge eole/tools repository
cd /usr/tools
git checkout master
git remote add eole https://github.com/eole/tools.git
git fetch eole
git merge eole/master
git push eole master

# Merge eole/ports repository
cd /usr/ports
git checkout master
git remote add eole https://github.com/eole/ports.git
git fetch eole
git merge eole/master
git push eole master
