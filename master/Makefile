all: install

clean :
	rm -rf ${DESTDIR}/srv/salt
	rm -rf ${DESTDIR}/srv/pillar

install:
	install -d ${DESTDIR}/srv/salt/
	install -d ${DESTDIR}/srv/pillar
	cp -r salt/* ${DESTDIR}/srv/salt/
	cp -r pillar/* ${DESTDIR}/srv/pillar/

.PHONY: clean install
