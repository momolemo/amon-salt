cd /usr/tools
git checkout amon3
case $1 in
(dvd)
 echo "make $1";;
(vm-qcow2)
 echo "make $1";;
(vm-vmdk)
 echo "make $1";;
(*)
 echo "Usage : $0 dvd|vm-qcow2|vm-vmdk"
esac
