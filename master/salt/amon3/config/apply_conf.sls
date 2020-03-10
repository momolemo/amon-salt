recharger la conf:
  cmd.run:
    - name: /usr/local/etc/rc.reload_all 
    - onchanges:
      - file: /conf/config.xml
