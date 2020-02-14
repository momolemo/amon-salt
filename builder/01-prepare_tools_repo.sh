pkg update
pkg install git rsync
cd /usr
# Get local tools git repository
git clone https://github.com/opnsense/tools.git
cd tools

# Update all or individual repositories (core, plugins, ports, portsref, src, tools)
make update
