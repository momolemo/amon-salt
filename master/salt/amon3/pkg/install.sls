{% for package in pillar.get('pkg', {}) %}
{{package}}-installed:
  pkg.installed:
    - name: {{package}}
{% endfor %}
