#salt-ssh:
#  config_dir: /srv/salt

envoie du fichier conf.xml:
  file.managed:
    - name: /conf/config.xml
    - source: salt://config.xml
    - user: root
    - group: wheel
    - mode: '644'


recharger la conf:
  cmd.run:
    - name: /usr/local/etc/rc.reload_all 
    - onchanges:
      - file: /conf/config.xml


minion_restart:
  at.watch:
    - job: 'salt-call --local service.restart salt_minion'
    - timespec: 'now+1min'
    - tag: minion_restart
    - unique_tag: true
    - watch:
        - file: /conf/config.xml
