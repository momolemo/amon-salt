# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import opnsense with context %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

{%- set configfile_path = opnsense.config_dir | path_join(opnsense.config_file) %}

opnsense-config-file-file-managed:
  file.managed:
    - name: {{ configfile_path }}
    - source: {{ files_switch(['config.xml'],
                              lookup='opnsense-config-file-file-managed'
                 )
              }}
    - mode: 644
    - user: root
    - group: {{ opnsense.rootgroup }}
    - makedirs: True
    - template: jinja
    - context:
        opnsense: {{ opnsense }}
