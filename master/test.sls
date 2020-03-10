{% for i in range (0,10) %}
envoie du fichier conf{{ i }}.xml:
  file.managed:
    - name: /tmp//conf{{ i }}.xml
    - source: salt://config.xml
    - user: root
    - group: wheel
    - mode: '644'
    - template : jinja
{% endfor %}


#for i in range 0,10:
# if nb < nb+1: #si 0<1 nb prend 1
#   nb = nb+1 
#   i++
# else:
#   nb = nb #sinon nb = 10 pour le dernier
#   i++   
