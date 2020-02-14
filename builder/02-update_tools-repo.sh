# Generate Amon3 repository sign keys
# FIXME : IMPORT KEYS
if [ ! -f /root/repo20.1.key ]
then
    openssl genrsa -out /root/repo20.1.key 4096
    chmod 0400 /root/repo20.1.key
    openssl rsa -in /rootrepo20.1.key -out /root/repo20.1.pub -pubout
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
