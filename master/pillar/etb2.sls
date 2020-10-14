# -*- coding: utf-8 -*-
# vim: ft=yaml
---
opnsense:
  config_dir: /conf
  config_file: config.xml
  user: 'root'
  mirror: http://test-eole.ac-dijon.fr/amon3/

  # Paramètres etb2
  # ---------------

  etab_name: etb2
  dns_server: 192.168.0.1
  aca_name: ac-test
  suffix_aca_domain: fr
  local_domain: etb2.lan
  hosts:
    etb2.ac-test.fr: 192.168.0.32
    scribe.etb2.lan: 10.2.3.5

  dns:
    private_domain:
      - eole.lan
      - ac-test.fr
    domain_forward:
      dompedago.etb2.lan:
          ip: 10.2.3.11
          descr: DNS Scribe AD

  gateway: 192.168.0.1
  if:
    wan:
      hw_interface: vtnet0
      enabled: true
      descr: internet
      ip: 192.168.0.32
      subnet: 24
      ssh_enabled: true
      dns_enabled: false
      proxy_enabled: false
    opt1:
      enabled: true
      descr: admin
      ip: 10.2.1.1
      subnet: 24
      ssh_enabled: true
      dns_enabled: true
      proxy_enabled: true
    opt2:
      enabled: true
      descr: pedago
      ip: 10.2.2.1
      subnet: 24
      ssh_enabled: true
      dns_enabled: true
      proxy_enabled: true
    opt3:
      enabled: true
      descr: dmz
      ip: 10.2.3.1
      subnet: 24
      ssh_enabled: true
      dns_enabled: true
      proxy_enabled: true

  dhcrelay:
    enabled: true
    interfaces:
      - opt2
      - opt3
    server: 10.2.3.5
  ssh:
    enabled: true
    noauto: false
    permitrootlogin: true
    passwordauth: true

  proxy:
    port: 3128

  firewall:
    admin_ports:
      type: port
      content:
        - 22
        - 9443
      descr: "Ports d'administration"
    proxy_ports:
      type: port
      content:
        - 3128
      descr: "Ports d'écoute du proxy web"
    dns_ports:
      type: port
      content:
        - 53
      descr: "Ports d'écoute du serveur DNS"
    ip_scribe_dmz:
      type: host
      content:
        - 10.2.3.5
      descr: "Adresse IP Scribe en DMZ"
    samba_ports:
      type: port
      content:
        - 445
      descr: "Port d'écoute de Samba"
    web_ports:
      type: port
      content:
        - 80
        - 443
      descr: "Ports web"
    eole_sso_ports:
      type: port
      content:
        - 8443
      descr: "Port du service SSO EOLE"
    ead2_ports:
      type: port
      content:
        - 4200
      descr: "Port d'écoute de l'EAD2"
    ead2_scribe_dmz:
      type: port
      content:
        - 4203
      descr: "Port d'écoute de l'EAD2 du serveur Scribe en DMZ"
...
