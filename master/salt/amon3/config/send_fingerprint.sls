envoi du fichier fichier fingerprint:
  file.managed:
    - name: /usr/local/etc/pkg/fingerprints/OPNsense/trusted/eole-repo.fingerprint 
    - source: salt://amon3/config/file/eole-repo.fingerprint   
    - user: root
    - group: wheel
    - mode: '644'
    - template: jinja
    - watch:
        - file: /conf/config.xml
  
