minion_restart:
  at.watch:
    - job: 'salt-call --local service.restart salt_minion'
    - timespec: 'now+1min'
    - tag: minion_restart
    - unique_tag: true
    - watch:
        - file: /conf/config.xml
