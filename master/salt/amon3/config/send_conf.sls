envoie du fichier conf.xml:
  file.managed:
    - name: /conf/config.xml
    - source: salt://amon3/config/config.xml
    - user: root
    - group: wheel
    - mode: '644'
    - template: jinja
