set REPO_EXEC_CMD="ssh repository@castor.eole.lan"
set REPO_TESTEOLE_PATH="/srv/repository/amon3/pub"
set REPO_EOLE_PATH="/srv/nfs/eole/mirrors/amon3/pub"

$REPO_EXEC_CMD rm -rf $REPO_TESTEOLE_PATH/FreeBSD\:11\:amd64/20.1/latest
$REPO_EXEC_CMD mkdir -p {$REPO_TESTEOLE_PATH,$REPO_EOLE_PATH}/FreeBSD\:11\:amd64/20.1/{latest,sets}
rsync -e ssh -avz /usr/local/opnsense/build/20.1/amd64/sets $REPO_TESTEOLE_PATH/FreeBSD\:11\:amd64/20.1/sets
$REPO_EXEC_CMD tar xvf $REPO_TESTEOLE_PATH/FreeBSD\:11\:amd64/20.1/sets/packages-20.1-OpenSSL-amd64.tar -C $REPO_TESTEOLE_PATH/FreeBSD:11:amd64/20.1/latest/
