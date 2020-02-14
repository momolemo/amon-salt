all: install

clean :
	rm -rf ${DESTDIR}${PREFIX}/etc/pkg/fingerprints/OPNsense/trusted/eole-repo.fingerprint

install:
	install -d ${DESTDIR}${PREFIX}/etc/pkg/fingerprints/OPNsense/trusted
	cp etc/pkg/fingerprints/OPNsense/trusted/eole-repo.fingerprint ${DESTDIR}${PREFIX}/etc/pkg/fingerprints/OPNsense/trusted/

.PHONY: clean install
